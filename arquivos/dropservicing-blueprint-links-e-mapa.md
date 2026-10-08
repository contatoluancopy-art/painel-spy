# Dropservicing Blueprint (Dylan Sigley) — Links e mapa do funil

Capturado em 08/10/2026 a partir do link do webinário gravado.

## O funil, na ordem

1. **Site institucional** (Webflow): https://go.dropservicing.com — CTA "Watch Free Training" manda pro registro
2. **Registro do webinar** (ClickFunnels): https://dropservicing.com/training — embute o form do WebinarJam (webinar 213 desktop / 212 mobile; o link que você mandou era da variação 238)
3. **Sala do webinar** (EverWebinar, replay automatizado disfarçado de live): https://event.webinarjam.com/7vm64/live/... — vídeo de 1h39 (5946s)
   - Oferta aparece aos **46:48** do vídeo, com timer de urgência de 54 min
   - No fim do vídeo (5946s) redireciona sozinho pra página de vendas
4. **Página de vendas** (ClickFunnels): https://dropservicing.com/exclusive
   - "Drop Servicing Partner Program" — $996 à vista ou 3x $396 (âncora $2.996, "desconto de $2.000")
   - Garantia de 365 dias baseada em ação; 15 vídeos de depoimento no Wistia
   - Exit-pop: "Wait! Did You Know These 2 Things?" (reforça garantia + parcelamento)
5. **Checkout** (ClickFunnels + Stripe): https://dropservicing.com/exclusive-offer — sem order bump visível no HTML; OTO/obrigado só revela pós-compra
6. **Backend high-ticket**: https://ai.dropservicing.com — "AI software" pra drop servicing a **$5.000**

## Variações do webinar (212 / 213 / 238)

São três configurações do MESMO evento, separadas por campanha. Nome interno vazado pela API: "META - SC PP $1K + Face cam + No BNPL + 365 days + special" (tráfego Meta, Partner Program ~$1K, com face cam, sem parcelamento BNPL, garantia 365d).

| ID | Hash | Dispositivo/campanha | Vídeo (Vimeo) | Duração | Manda pra |
|----|------|---------------------|---------------|---------|-----------|
| 212 | 9vg94i90 | Meta Mobile (sessões 11h e 19h NY) | não capturado | — | provavelmente /special |
| 213 | 0vg6niko | Meta Desktop (just in time) | 1149139062 | 5946s | https://dropservicing.com/special → checkout /special-offer |
| 238 | oyz98axz | variação do link original | 1129875642 | 5946s | https://dropservicing.com/exclusive → checkout /exclusive-offer |

O conteúdo é o mesmo (duração idêntica ao segundo, mesma oferta aos 46:48, mesmo timer de 54 min, mesmo preço $996/3x$396), mas cada campanha tem o próprio upload no Vimeo e a própria página de vendas espelhada (/special vs /exclusive) — jeito de medir conversão por campanha sem depender só de UTM. URL do MP4 do 213 (assinada):
https://player.vimeo.com/progressive_redirect/playback/1149139062/rendition/1080p/file.mp4%20%281080p%29.mp4?loc=external&signature=cf7754dae2b1846cbf073b50efdcf80f218a8c1bcb2a578851c6e31ae5be57b5
Config do replay do 213: `webinarjam-replay-config-213.json` · HTML da página espelho: `paginas-html/vendas-special.html`

## Arquivo de vídeo do webinar

- **Baixado**: `webinar-dylan-sigley-1080p.mp4` (876 MB, 1080p, 1h39, válido no ffprobe)
- URL direta (MP4 progressivo do Vimeo, com assinatura):
  https://player.vimeo.com/progressive_redirect/playback/1129875642/rendition/1080p/file.mp4%20%281080p%29.mp4?loc=external&signature=44b9be2b3af52ca7d94cd39a395b6ad80154ea25ea10150ca74284206ca91a0d
- ID do vídeo no Vimeo: 1129875642
- Config completo do replay (oferta, redirects, timings): `webinarjam-replay-config.json`

## Links do WebinarJam

- Link original (sessão): https://event.webinarjam.com/7vm64/live/5v864ipxfyqps0q8r6iy6v73?webinar_id=238
- Login/registro do evento: https://event.webinarjam.com/7vm64/login/zy56nan8azk0fzw1kvb60vq5f2?webinar_id=238
- Sala gerada pro meu registro (contato.luancopy@gmail.com): https://event.webinarjam.com/7vm64/live/k60p3c1oik2zi892wyh571op?webinar_id=238
- Hash do webinar: `oyz98axz` · member ID da conta: `221415`
- Título: "The New Way to Build a 6-Figure Online Business With AI"
- Apresentador: Dylan Sigley — dylan@dropservicingblueprint.com

## Botão da oferta dentro do webinar (config do replay)

- Headline: "EXCLUSIVE OFFER" / "New Drop Servicing Partner Program - Get $2,000 Discount - Limited Spots Available - Offer Expires Soon"
- Botão: "GET INSTANT ACCESS" → https://dropservicing.com/exclusive
- Imagem da oferta: https://dt9xom8irs6kr.cloudfront.net/u221415/vbpYkX2BlEVHE8hj5D3R1762349158.png

## Ecossistema / outros links do player

- Home: https://dropservicing.com → redireciona pra https://dropservicing.com/home-page-2
- Reviews (página de membros): https://dropservicing.com/reviews-members-1
- Área de membros do curso: https://course.dropservicingblueprint.com/login
- Depoimentos: https://www.dropservicingblueprint.com/testimonials
- Trustpilot: https://www.trustpilot.com/review/dropservicingblueprint.com (4.9)
- YouTube: https://www.youtube.com/c/DropServicingBlueprintDylanSigley
- Instagram: https://www.instagram.com/dropservicingblueprint
- Facebook: https://www.facebook.com/dropservicingblueprint · grupo: https://www.facebook.com/groups/678309539279383
- Twitter/X: https://twitter.com/dropservicer
- Vídeos Wistia da página de vendas (conta valurellc): 24pvu5oip9, 50be3ks0hm, 9lsnni5wtx, 9luz6eb8y5, crf80unqrm, elf4zajf1p, hil0o6ude6, li713im4h6, n2ujymsyou, pl5nx77nue, q03fyag9sb, q8xu3220ak, rup4dintys, setchjy39v, ukc9d5i5pr — padrão: https://valurellc.wistia.com/medias/{id}
- Vimeo antigo embutido na página de vendas: https://player.vimeo.com/video/415207395

## Stack de tracking

- Hyros (conta 177903), VWO (Visual Website Optimizer), ActiveCampaign (diffuser), GTM (GTM-PWX9DSN e GTM-WSNTQ64D), pixel do Facebook, cookie de venda do WebinarJam (`event.webinarjam.com/t/sale/cookie.js`)

## Publicado no Painel Spy web (08/10/2026)

- Card da oferta: https://contatoluancopy-art.github.io/painel-spy/ (senha do time)
- PDF "como funciona o funil": https://contatoluancopy-art.github.io/painel-spy/arquivos/dropservicing-blueprint-como-funciona-o-funil.pdf
- Este mapa de links: https://contatoluancopy-art.github.io/painel-spy/arquivos/dropservicing-blueprint-links-e-mapa.md
- Drive da oferta: https://drive.google.com/drive/folders/1UFimFZqN3_nJ_QosJu8fmWBlj1bh7wUf?usp=sharing

## HTMLs salvos (`paginas-html/`)

- `registro-training.html` — página de registro
- `sala-webinar-replay.html` — sala do replay (com o config JSON embutido)
- `vendas-exclusive.html` — página de vendas completa
- `checkout-exclusive-offer.html` — checkout
- `backend-ai-software.html` — oferta do software de $5k
- `site-institucional-go.html` — site Webflow
