# RedLabs — Stack y convenciones

> Fuente: "Centro_de_INFO_RedLabs_v2" (Drive), pestaña Stack Tecnológico Base. Todo ✅ activo.

## Stack de automatizaciones

| Función | Herramienta | Costo |
|---|---|---|
| Automatización / orquestación | **n8n** (cuenta Pro) | gratis para RedLabs |
| WhatsApp Business API | **360dialog** (cuenta del cliente) | ~u$s 5–15 lo paga el cliente |
| LLM / IA generativa | **OpenAI via n8n Pro** (GPT-4o, Whisper, Vision) | gratis vía n8n Pro |
| Hojas de cálculo | Google Sheets API | gratuito |
| Calendario | Google Calendar API | gratuito |
| Email | Gmail API | gratuito |
| Almacenamiento | Google Drive API | gratuito |
| Scraping (portales inmobiliarios) | **Apify** (cuenta del cliente, free tier) | gratis |
| Publicación IG/FB | Meta for Developers (cuenta del cliente) | gratuito |
| FAQ bot Instagram DMs | Instagram Messaging API vía Meta | gratuito |
| CRM simple | Google Sheets / Notion API | gratuito |
| Generación de PDFs | n8n + Google Docs → export PDF | gratuito |

En proyectos de clientes también se usó: Twilio (WhatsApp alternativo), Gemini API (Google AI
Studio), Creatomate (edición automática de video), hcti.io (placas de imagen), Netlify (paneles HTML).

## Stack web

- **Desarrollo**: Claude Code (diseño + programación).
- **Hosting / backend**: Google Firebase (Hosting + Firestore), free tier / bajo costo.
- **Frontend del sitio propio**: HTML/CSS/JS vanilla + three.js para el hero 3D; fuentes
  self-hosted (woff2); sin frameworks.

## Convenciones

- Idioma de contenido y commits: español.
- Los flujos n8n se entregan/retienen como `.json` según modalidad (alquiler vs compra).
- Las cuentas de APIs (360dialog, Apify, Meta) van a nombre del **cliente**; n8n Pro es de RedLabs.
- Repos en GitHub bajo `vzluca/`.
