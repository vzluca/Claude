# RedLabs — Contexto de empresa

Este directorio es la base de conocimiento de RedLabs. Cuando trabajes en cualquier
tarea relacionada con RedLabs, lee primero los archivos de `knowledge/` que sean
relevantes antes de responder o generar código.

## Cómo usar esta base de conocimiento

1. **Siempre** lee `knowledge/empresa.md` para entender qué es RedLabs, su tono y su público.
2. Si la tarea es sobre un proyecto concreto, lee su archivo en `knowledge/proyectos/`.
3. Registra decisiones importantes en `knowledge/decisiones.md` (fecha + decisión + motivo).
4. Si el usuario menciona algo nuevo sobre la empresa (cliente, proyecto, cambio de stack),
   actualiza el archivo correspondiente en `knowledge/` en la misma sesión.

## Estructura

- `knowledge/empresa.md` — qué es RedLabs: misión, modelo de negocio, público, estado actual.
- `knowledge/servicios.md` — catálogo de servicios, combos y precios (resumen del Centro de INFO).
- `knowledge/stack.md` — stack tecnológico y convenciones.
- `knowledge/proyectos/` — un archivo por proyecto (usar `_plantilla.md` como base).
- `knowledge/clientes.md` — clientes y contactos clave.
- `knowledge/decisiones.md` — registro de decisiones (architecture decision log).
- `brand/manual-de-marca.md` — colores, tipografía, logos, tono de voz. **Leer antes de diseñar
  cualquier pieza visual o escribir copy de RedLabs.**
- `brand/REDLABS-manual-de-marca.pdf` — el manual en formato presentación (11 páginas), para
  compartir con clientes/colaboradores. Fuente editable en `brand/book-src/brandbook.html`
  (se regenera con Chromium headless: `chrome --headless --print-to-pdf`).
- `brand/logos/` — isotipos, lockups y favicon en SVG/PNG.
- `knowledge/datos/Centro_de_INFO_RedLabs_v2.xlsx` — **copia local del Centro de INFO: catálogo
  completo de servicios, precios, combos y stack. Fuente de verdad para cotizar.**
- `claude-project/` — kit para armar el Proyecto "RedLabs" en claude.ai (instrucciones + qué subir).

## Fuentes de verdad externas (Google Drive)

- Planilla **"Centro_de_INFO_RedLabs_v2"** — versión viva del catálogo (la copia local está en
  `knowledge/datos/`; si difieren, manda la de Drive).
- Carpeta **"REDLABS"** — identidad visual y assets.
- Carpeta **"redlabs-site"** — copia del sitio web desplegado.

## Reglas

- Responder siempre en español salvo que se pida lo contrario.
- No inventar datos de la empresa: si algo no está en `knowledge/`, preguntar.
- Mantener los archivos de `knowledge/` cortos y factuales; son contexto, no documentación de marketing.
