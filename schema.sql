-- Painel Spy Web — schema do banco compartilhado
-- Rodar UMA vez no Supabase: Dashboard → SQL Editor → colar tudo → Run

create table if not exists painel_rows (
  id         text primary key,
  kind       text not null,                      -- 'oferta' | 'projeto' | 'tarefa'
  deleted    boolean not null default false,     -- apagar = tombstone (a linha fica, marcada)
  data       jsonb not null,
  updated_at timestamptz not null default now()
);

-- updated_at sempre no relógio do servidor (o sync incremental depende disso)
create or replace function touch_updated_at() returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists trg_touch on painel_rows;
create trigger trg_touch before insert or update on painel_rows
for each row execute function touch_updated_at();

-- índice pro pull incremental
create index if not exists idx_painel_rows_updated on painel_rows (updated_at);

-- segurança: só quem fez login (usuário do time) lê e escreve
alter table painel_rows enable row level security;
drop policy if exists team_all on painel_rows;
create policy team_all on painel_rows
  for all to authenticated
  using (true) with check (true);
