# Painel Spy — versão web do time

Painel de spy compartilhado: todo mundo abre a mesma URL, entra com a senha do time e vê as alterações dos outros ao vivo (banco no Supabase + canal realtime).

## Como funciona

- `index.html` — o painel inteiro (mesmo visual do app desktop).
- Cada oferta/projeto vira uma linha na tabela `painel_rows` do Supabase.
- Quem salva manda um aviso no canal realtime; os outros navegadores puxam só o que mudou (chega em ~1s). Rede de segurança: re-sincroniza a cada 25s e ao voltar pra aba.
- Apagar = tombstone (`deleted=true`), então apagar num navegador some em todos.
- Sem internet: continua salvando no espelho local e sincroniza quando voltar (badge fica "reconectando…").
- Imagens coladas são reduzidas pra no máximo 720px JPEG antes de subir.

## Setup (uma vez)

1. **Supabase** (conta contato.luancopy@gmail.com): criar projeto → SQL Editor → rodar `schema.sql`.
2. **Usuário do time**: Authentication → Users → Add user → email `contato.luancopy@gmail.com`, senha = a senha do time → marcar "Auto Confirm User".
3. **Fechar cadastro**: Authentication → Sign In / Providers → Email → desligar "Allow new users to sign up" (senão qualquer um com a anon key cria login).
4. **Chaves**: Settings → API → copiar **Project URL** e **anon public key** pro bloco `CONFIG` no topo do `<script>` do `index.html`.
5. **Deploy**: Vercel (projeto estático, sem build) ou GitHub Pages — é só servir o `index.html`.
6. **Carga inicial**: no app desktop, Exportar → na web, Importar (modo SUBSTITUIR). A partir daí o banco do time é a fonte.

## Limites conhecidos (v1)

- Duas pessoas editando a MESMA oferta ao mesmo tempo: a última que salvar vence (oferta inteira).
- Edição offline não sobrevive a fechar a aba antes de reconectar (o espelho local fica, mas o sync parte do banco).
- A senha é única pro time todo; trocar = trocar a senha do usuário no Supabase.
