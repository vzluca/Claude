# 📦 Inventario completo de lo instalado

Todo esto vive en el repo `vzluca/Claude`. **84 skills + 1 comando + 1 servidor MCP + 2 CLIs.**
Las skills funcionan en **Claude Code** (se auto-activan según tu pedido). Para invocarlas a mano
escribís `/nombre`.

> Local vs nube: **todo lo de acá es local y privado** (ver `README.md`). Lo único en la nube es
> el chat/Proyectos de claude.ai.

---

## 🛠️ CLIs y servidor MCP (necesitan instalarse en tu máquina)

| Qué | Tipo | Para qué | Cómo se instala | Carpeta con la guía |
|---|---|---|---|---|
| **headroom** | CLI + MCP | Comprime el contexto (tool outputs, logs, archivos) para gastar menos tokens. El ahorro real sale del modo `wrap`/`proxy`. | `uv tool install "headroom-ai[all]"` | `headroom/README.md` |
| **graphify** (`graphifyy`) | CLI + skill | Mapea tu proyecto en un grafo de conocimiento; consultás en vez de grepear. | `uv tool install graphifyy` | `graphify/README.md` |

El servidor MCP de headroom ya está declarado en `.mcp.json` (raíz del repo). Para tenerlo en
todos tus proyectos: `claude mcp add -s user headroom -- uvx --from "headroom-ai[mcp]" headroom mcp serve`.

---

## ⌨️ Comando

| Comando | Qué hace |
|---|---|
| `/cult-ui` (`.claude/commands/cult-ui.md`) | Referencia de patrones y componentes UI de Cult/UI (Next.js + Tailwind + shadcn). |

---

## 🧩 Las 83 skills, por categoría

### 🎨 Diseño y frontend (15)
| Skill | Para qué |
|---|---|
| `frontend-design` | Diseño de interfaces distintivas, que no parezcan "template de IA" |
| `building-components` | Componentes UI accesibles y componibles |
| `shadcn-ui` | Librería shadcn/ui (React + Tailwind) |
| `ui-ux-pro-max` | Inteligencia de diseño UI/UX: estilos, paletas, tipografías, guías |
| `web-design-guidelines` | Revisa tu UI contra buenas prácticas de accesibilidad/UX |
| `apple-design` | Estética y animaciones estilo Apple para web |
| `emil-design-eng` | Filosofía de pulido de UI de Emil Kowalski |
| `brand-guidelines` | Aplica colores/tipografía de marca de Anthropic |
| `theme-factory` | 10 temas listos para aplicar a slides/docs/webs |
| `canvas-design` | Arte visual en PNG/PDF (posters, diseños) |
| `algorithmic-art` | Arte generativo con p5.js |
| `animation-vocabulary` | Diccionario: describís un efecto y te da el nombre técnico |
| `improve-animations` | Audita y planifica mejoras de animación en un proyecto |
| `review-animations` | Revisa código de animaciones |
| `web-artifacts-builder` | Artifacts HTML complejos (React, Tailwind, shadcn) |

### 🧪 Metodología de desarrollo — "superpowers" (15)
| Skill | Para qué |
|---|---|
| `brainstorming` | Explora requisitos ANTES de programar (usarla antes de crear features) |
| `writing-plans` | Escribe un plan de implementación paso a paso |
| `executing-plans` | Ejecuta un plan ya escrito con checkpoints |
| `subagent-driven-development` | Ejecuta tareas independientes con subagentes |
| `dispatching-parallel-agents` | Cuando hay 2+ tareas independientes en paralelo |
| `test-driven-development` | TDD: tests antes del código |
| `systematic-debugging` | Método para debuggear cualquier bug antes de tirar fixes |
| `using-git-worktrees` | Aísla el trabajo en worktrees de git |
| `finishing-a-development-branch` | Cómo cerrar/integrar una rama terminada |
| `requesting-code-review` | Verificar que el trabajo cumple los requisitos |
| `receiving-code-review` | Cómo recibir e implementar feedback de review |
| `verification-before-completion` | Verificar de verdad antes de decir "listo" |
| `using-superpowers` | Meta-skill: cómo encontrar y usar las demás skills |
| `writing-skills` | Crear/editar skills |
| `skill-creator` | Crear skills nuevas, medir y optimizar su rendimiento |

### 🧹 Calidad de código — "ponytail" (6)
| Skill | Para qué |
|---|---|
| `ponytail` | Fuerza la solución más simple y mínima que funciona (anti-sobre-ingeniería) |
| `ponytail-review` | Review enfocado solo en qué borrar / simplificar |
| `ponytail-audit` | Audita TODO el repo buscando código de más |
| `ponytail-debt` | Junta los `ponytail:` (atajos marcados para después) |
| `ponytail-gain` | Muestra el impacto medido de ponytail |
| `ponytail-help` | Ayuda rápida de todos los modos ponytail |

### 🌐 Web dev, deploy y research (10)
| Skill | Para qué |
|---|---|
| `vercel-deploy` | Deploy a Vercel ("deploy my app", "pasalo a producción") |
| `vercel-react-best-practices` | Optimización de performance React/Next.js |
| `playwright-cli` | Automatiza el navegador (forms, screenshots, scraping, testing) |
| `webapp-testing` | Testea apps web locales con Playwright |
| `chrome-bridge-automation` | Automatiza tu Chrome real (con tus sesiones/logins) |
| `agent-browser` | Automatización de navegador para agentes |
| `deep-research` | Investigación web sistemática multi-ángulo (mejor que buscar suelto) |
| `web-reader` | Extrae contenido de páginas web |
| `humanizer` | Saca las marcas de "texto escrito por IA" |
| `context7` | Documentación actualizada de librerías (React, Next, Django, etc.) |

### 📄 Documentos y archivos (6)
| Skill | Para qué |
|---|---|
| `docx` | Crear/leer/editar documentos Word |
| `pdf` | Todo con PDFs (leer, combinar, separar, formularios, OCR) |
| `pptx` | Presentaciones PowerPoint |
| `xlsx` | Planillas Excel/CSV |
| `doc-coauthoring` | Co-escribir documentación/propuestas/specs paso a paso |
| `internal-comms` | Comunicaciones internas (reportes, updates, FAQs) |

### 🔍 SEO (25)
`seo` (el router principal) · `seo-audit` · `seo-technical` · `seo-content` · `seo-content-brief`
· `seo-schema` · `seo-sitemap` · `seo-backlinks` · `seo-cluster` · `seo-competitor-pages`
· `seo-local` · `seo-maps` · `seo-google` · `seo-geo` (AI Overviews/ChatGPT) · `seo-page`
· `seo-plan` · `seo-programmatic` · `seo-ecommerce` · `seo-images` · `seo-image-gen`
· `seo-hreflang` (multi-idioma) · `seo-drift` (monitoreo de cambios) · `seo-sxo`
· `seo-flow` · `seo-dataforseo` (datos en vivo, requiere API).

> Suite SEO completa. Empezás por `seo` o `seo-audit`; las demás son especialistas.

### 🎬 Video / medios (2)
| Skill | Para qué |
|---|---|
| `remotion-best-practices` | Crear videos programáticamente con Remotion (React) |
| `slack-gif-creator` | GIFs animados optimizados para Slack |

### 🤖 IA / API y grafos (3)
| Skill | Para qué |
|---|---|
| `claude-api` | Referencia de la API de Claude (modelos, precios, tool use, caching) |
| `mcp-builder` | Crear servidores MCP (Python o TypeScript) |
| `graphify` | Mapea un proyecto en un grafo de conocimiento (necesita el CLI `graphifyy`) |

### ⚙️ Automatización — n8n (1, hecha a medida para RedLabs)
| Skill | Para qué |
|---|---|
| `n8n-flows` | Construir, depurar y **entregar** flujos de n8n con tu stack real (WhatsApp/360dialog, Sheets, OpenAI, Apify, Meta, Firebase) y tu modelo de negocio (precio por nodos, alquiler/compra). Se apoya en `redlabs/knowledge/`. |

### 🧭 Descubrir más skills (1)
| Skill | Para qué |
|---|---|
| `find-skills` | Descubre e instala más skills cuando preguntás "¿hay una skill para X?" |

---

## 📌 Cómo se actualiza este inventario

Si más adelante instalás o sacás skills, este archivo hay que actualizarlo a mano (o pedime que lo
regenere). El conteo sale de: `ls .claude/skills/ | grep -v README | wc -l`.
