# 🧰 Tu perfil de trabajo: páginas web + flujos de n8n

Tu servicio real (RedLabs) es **hacer sitios web y automatizaciones de n8n**. Este archivo te dice
exactamente **qué skills usar para eso** y **dónde**, para que no tengas que adivinar.

## ✅ La buena noticia: casi todo ya está en "lo necesario"

Las skills de web **ya están instaladas** en tu set esencial. El instalador (`setup/instalar.sh` /
`.ps1`) copia **las 84** a tu `~/.claude` global, así que en **Claude Code** las tenés en todos
tus proyectos y se activan solas. No hay que instalar nada extra para tu trabajo.

Lo único que faltaba era **n8n** (no había ninguna skill). Ya la creé: **`n8n-flows`**, basada en
tu stack real (n8n Pro, 360dialog, OpenAI, Google, Apify, Meta, Firebase) y tu modelo de negocio
(alquiler/compra/personalizado, precio por nodo).

## 🏗️ Tus skills clave por tipo de trabajo

### Para SITIOS WEB (en Claude Code)
| Skill | Cuándo se activa |
|---|---|
| `frontend-design` | Diseño de la interfaz, que no parezca template de IA |
| `ui-ux-pro-max` | Estilos, paletas, tipografías, tipos de producto, guías UX |
| `web-design-guidelines` | Revisar tu UI contra buenas prácticas / accesibilidad |
| `building-components` | Componentes reutilizables y accesibles |
| `shadcn-ui` | Si usás React + Tailwind + shadcn |
| `vercel-react-best-practices` | Performance en React/Next |
| `playwright-cli` / `webapp-testing` | Probar el sitio (forms, screenshots, que ande) |
| `vercel-deploy` | Publicarlo ("pasalo a producción") |

> Tu sitio propio (`redlabs-site`) es HTML/CSS/JS + **Firebase**. Para eso, `frontend-design` +
> `web-design-guidelines` + testeo alcanzan; Firebase se maneja con comandos, no necesita skill.

### Para FLUJOS DE n8n (en Claude Code o en el chat)
| Skill | Para qué |
|---|---|
| `n8n-flows` (nueva) | Diseñar/depurar/entregar workflows con tu stack; contar nodos y cotizar; patrones (bot WhatsApp, leads, ACM, publicación). |

Se apoya en `redlabs/knowledge/stack.md` y `servicios.md` (que ya están en el repo).

## 📍 Dónde hacer este trabajo

**Claude Code** es el lugar ideal para construir sitios y flujos (necesita ver y escribir
archivos). Recordá: **Claude Code también existe en el navegador**, en
[claude.ai/code](https://claude.ai/code) — no hace falta la terminal. Ahí las 84 skills trabajan
por vos.

### Cómo fluye un trabajo típico
- **Sitio web**: abrís el proyecto en Claude Code → describís qué querés → se activan
  `frontend-design`/`ui-ux-pro-max`/etc. → construye → `webapp-testing` lo prueba →
  `vercel-deploy` (o Firebase) lo publica.
- **Flujo n8n**: describís la automatización → `n8n-flows` te guía la estructura, los nodos, las
  cuentas a conectar y **el precio por nodos** → armás/ajustás el JSON → lo probás con datos
  reales → lo entregás según modalidad (alquiler = te quedás el `.json`; compra = se lo das).

## 💻 ¿Y en el chat del navegador (claude.ai común)?

Para **planificar, discutir diseño o cotizar** un trabajo en el chat común, subí estas al chat
(están en `setup/claude-ai-skills/`): **`frontend-design`**, **`web-design-guidelines`** y
**`n8n-flows`**. Sirven para conversar y presupuestar. Pero **la construcción real conviene
hacerla en Claude Code**, donde puede tocar los archivos.
