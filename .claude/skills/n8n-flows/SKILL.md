---
name: n8n-flows
description: "Construir, depurar y entregar flujos de automatización en n8n como servicio (estilo RedLabs). Úsalo siempre que el usuario quiera crear, modificar, revisar o explicar un workflow de n8n; conectar WhatsApp (360dialog), Gmail, Google Sheets/Calendar/Drive, OpenAI, Instagram/Meta, Apify o Firebase; armar un bot de WhatsApp, captación/seguimiento de leads, publicación en redes, ACM inmobiliario, o cualquier automatización por nodos. Activar ante 'n8n', 'workflow', 'flujo', 'automatización', 'nodo', 'webhook', 'bot de WhatsApp', '.json de n8n', 'trigger', o pedidos de cotizar/entregar una automatización."
---

# n8n Flows — construir automatizaciones como servicio

Guía para diseñar, construir, depurar y **entregar** workflows de n8n con el stack y el modelo de
negocio de RedLabs. Cuando trabajes en esto, leé también `redlabs/knowledge/stack.md` y
`redlabs/knowledge/servicios.md` (catálogo, precios por nodo y modalidades).

## Stack estándar (con qué se arma)

| Función | Herramienta | Notas |
|---|---|---|
| Orquestación | **n8n (cuenta Pro)** | El motor. Gratis para RedLabs. |
| WhatsApp | **360dialog** (cuenta del cliente) | Vía HTTP Request al API de 360dialog, o nodo WhatsApp. |
| IA / LLM | **OpenAI vía n8n Pro** (GPT-4o, Whisper, Vision) | Gratis vía n8n Pro. Whisper = audios; Vision = imágenes. |
| Planillas / CRM | **Google Sheets** (o Notion) | Base de datos simple del cliente. |
| Agenda | **Google Calendar** | Turnos, recordatorios. |
| Email | **Gmail** | Notificaciones, resúmenes. |
| Archivos | **Google Drive** | Fotos/videos (ej. propiedades). |
| Scraping | **Apify** (cuenta del cliente) | Portales inmobiliarios (Zonaprop, Argenprop, MercadoLibre). |
| Redes | **Meta for Developers** | Publicación IG/FB, DMs de Instagram. |
| PDFs | n8n + Google Docs → export | Informes (ej. ACM). |
| Hosting web/back | **Firebase** | Cuando el flujo se conecta a un sitio. |

**Regla de credenciales**: las cuentas de APIs (360dialog, Apify, Meta) van a nombre del
**cliente**; n8n Pro y OpenAI son de RedLabs. Nunca hardcodees tokens en el JSON — usan las
*credentials* de n8n.

## Cómo es un workflow de n8n (mínimo indispensable)

Un workflow es un JSON con dos partes: `nodes` (cada nodo con `type`, `parameters`, `position`,
y opcionalmente `credentials`) y `connections` (qué nodo alimenta a cuál).

- **Trigger** (arranque): `Webhook` (recibe mensajes de WhatsApp/Meta), `Schedule` (tareas
  diarias: resumen 8am, seguimiento), o `Manual` (para probar).
- **Lógica**: `IF` / `Switch` (ramas), `Set / Edit Fields` (armar/renombrar datos),
  `Merge` (unir ramas), `Code` (JS cuando no alcanza con nodos), `HTTP Request` (cualquier API
  sin nodo dedicado, ej. 360dialog).
- **Acciones**: nodos de Google Sheets/Gmail/Calendar/Drive, OpenAI, etc.
- **Expresiones**: para leer datos de un nodo previo se usa `{{ $json.campo }}` o
  `{{ $node["Nombre"].json.campo }}`.

## Patrones que se repiten en el catálogo

- **Bot de consultas (S01)**: Webhook → Set (extrae mensaje) → (opcional IF audio/imagen →
  Whisper/Vision) → lee Sheets (catálogo/FAQ) → OpenAI o respuesta fija → HTTP Request 360dialog.
  Menú con botones + derivación a humano.
- **Captación/calificación de leads (S02)**: Webhook → secuencia de preguntas → guarda en Sheets/
  Notion → Gmail/WhatsApp con resumen del lead. Addon scoring = nodo de puntaje.
- **Seguimiento (S03)**: Schedule → lee leads de Sheets → filtra por 24/48/72hs → mensaje
  personalizado por 360dialog → marca estado en Sheets.
- **Publicación en redes (S04)**: Sheets (propiedad) → OpenAI (texto + hashtags) → entrega al WPP
  del asesor o publica vía Meta.
- **ACM inmobiliario (S05)**: Sheets → Apify (scrapea portales) → OpenAI (valuación) →
  Google Docs → PDF → Gmail/WhatsApp.

## Buenas prácticas (que hacen que el flujo aguante en producción)

1. **Poné un error workflow / rama de error** en n8n para que si algo falla, avise (Gmail/WhatsApp)
   en vez de morir en silencio.
2. **Probá con datos reales** antes de entregar: usá *pin data* en el trigger y ejecutá nodo por
   nodo. Verificá casos borde (mensaje vacío, audio, imagen, cliente nuevo).
3. **Idempotencia**: que reenviar el mismo webhook no duplique filas ni mensajes (chequeá contra
   Sheets antes de escribir).
4. **Nombrá los nodos** con lo que hacen ("Leer catálogo", "Responder WhatsApp"), no dejes
   "HTTP Request1". El JSON se entrega y se mantiene: tiene que leerse.
5. **Timezone y formatos de fecha** explícitos (America/Argentina/Buenos_Aires).
6. **Límites/costos**: OpenAI vía n8n Pro; cuidá tokens en prompts largos (resumí contexto).

## Entrega según modalidad (importante para el negocio)

- 🔵 **Alquiler**: implementación + cuota mensual. RedLabs **mantiene el `.json`**; si el cliente
  no paga, se desactiva el flujo. No entregues el JSON.
- 🟢 **Compra**: pago único; si el cliente cancela mantenimiento, **recibe el `.json`** y se va.
- 🟡 **Personalizado**: se cotiza por nivel (Simple ≤8 nodos, Medio ≤18, Complejo ≤30) + u$s 15
  por nodo extra; >30 nodos → cotización manual. **Contá los nodos** al estimar.

## Al construir un flujo nuevo

1. Confirmá el objetivo y qué cuentas hay que conectar (¿WhatsApp del cliente? ¿su Sheets?).
2. Elegí trigger y mapeá los pasos como nodos antes de escribir el JSON.
3. Si generás/editás JSON de n8n, mantené `nodes` + `connections` coherentes y las credenciales
   por referencia (no tokens en texto).
4. Estimá nodos → precio (ver arriba). Sugerí modalidad (alquiler para MRR, compra para ticket).
5. Documentá en 3 líneas: qué hace, qué cuentas usa, cómo probarlo.
