# Skills instaladas

Colección de skills para Claude Code. Cada subdirectorio con un `SKILL.md` es una skill.
Para usarlas en una máquina, sincroniza este directorio con `~/.claude/skills/` (skills personales)
o con `.claude/skills/` dentro de un proyecto.

## Fuentes

| Fuente | Skills | Notas |
|---|---|---|
| [anthropics/skills](https://github.com/anthropics/skills) | `algorithmic-art`, `brand-guidelines`, `canvas-design`, `claude-api`, `doc-coauthoring`, `docx`, `frontend-design`, `internal-comms`, `mcp-builder`, `pdf`, `pptx`, `skill-creator`, `slack-gif-creator`, `theme-factory`, `web-artifacts-builder`, `webapp-testing`, `xlsx` | Colección oficial de Anthropic. |
| [obra/superpowers](https://github.com/obra/superpowers) | `brainstorming`, `dispatching-parallel-agents`, `executing-plans`, `finishing-a-development-branch`, `receiving-code-review`, `requesting-code-review`, `subagent-driven-development`, `systematic-debugging`, `test-driven-development`, `using-git-worktrees`, `using-superpowers`, `verification-before-completion`, `writing-plans`, `writing-skills` | Metodología de desarrollo (TDD, planes, debugging). |
| [AgriciDaniel/claude-seo](https://github.com/AgriciDaniel/claude-seo) | `seo`, `seo-audit`, `seo-backlinks`, `seo-cluster`, `seo-competitor-pages`, `seo-content`, `seo-content-brief`, `seo-dataforseo`, `seo-drift`, `seo-ecommerce`, `seo-flow`, `seo-geo`, `seo-google`, `seo-hreflang`, `seo-image-gen`, `seo-images`, `seo-local`, `seo-maps`, `seo-page`, `seo-plan`, `seo-programmatic`, `seo-schema`, `seo-sitemap`, `seo-sxo`, `seo-technical` | Suite SEO completa (`seo` es el router). No se instalaron las `extensions/` (requieren APIs externas: Ahrefs, DataForSEO, etc.). |
| [hainrixz/claude-webkit](https://github.com/hainrixz/claude-webkit) | `building-components`, `chrome-bridge-automation`, `deep-research`, `humanizer`, `playwright-cli`, `shadcn-ui`, `ui-ux-pro-max`, `vercel-deploy`, `vercel-react-best-practices`, `web-design-guidelines`, `web-reader` | Se omitieron sus `frontend-design` (derivada de la de Anthropic, que ya está instalada) y `seo-audit` (colisiona con la de claude-seo). |
| [emilkowalski/skills](https://github.com/emilkowalski/skills) | `animation-vocabulary`, `apple-design`, `emil-design-eng`, `improve-animations`, `review-animations` | Diseño y animaciones web. |
| [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) | `ponytail`, `ponytail-audit`, `ponytail-debt`, `ponytail-gain`, `ponytail-help`, `ponytail-review` | Revisión/auditoría de código estilo ponytail. |
| [remotion-dev/skills](https://github.com/remotion-dev/skills) | `remotion-best-practices` | Skill router que contiene anidadas `remotion-create`, `remotion-markup`, `remotion-captions`, `remotion-render`, `remotion-interactivity`, `remotion-saas` y `mediabunny` (se instaló solo el router para no duplicar contenido). |
| [vercel-labs/skills](https://github.com/vercel-labs/skills) | `find-skills` | Descubre e instala más skills desde el registro de Vercel. |
| [vercel-labs/agent-browser](https://github.com/vercel-labs/agent-browser) | `agent-browser` | Requiere el CLI `agent-browser` (`npm i -g agent-browser`). |
| [netresearch/context7-skill](https://github.com/netresearch/context7-skill) | `context7` | Documentación de librerías vía Context7. |

## Repos enlazados que NO se instalaron como skills

- **[thedotmack/claude-mem](https://github.com/thedotmack/claude-mem)** — es un plugin con hooks y una base de datos de memoria; sus skills dependen de esa infraestructura. Instalar como plugin: `/plugin marketplace add thedotmack/claude-mem` y luego `/plugin install claude-mem`.
- **[Hainrixz/whatsapp-agentkit](https://github.com/Hainrixz/whatsapp-agentkit)** — no contiene skills; es un kit de agente (CLAUDE.md + carpeta `knowledge/` + `start.sh`) pensado para clonarse como proyecto propio.
- **[ruvnet/ruflo](https://github.com/ruvnet/ruflo)** — herramienta de orquestación (claude-flow); sus skills internas dependen de su CLI. Usar vía `npx claude-flow`.
- **[anthropics/claude-quickstarts](https://github.com/anthropics/claude-quickstarts)** — proyectos de ejemplo de la API de Claude, no skills.
- **[microsoft/markitdown](https://github.com/microsoft/markitdown)** — herramienta Python para convertir documentos a Markdown. Instalar con `pip install "markitdown[all]"`; las skills `docx`/`pdf`/`pptx`/`xlsx` ya cubren ese caso dentro de Claude Code.
