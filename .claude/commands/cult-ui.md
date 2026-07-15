# Cult/UI — Referencia de patrones y componentes

Repositorio: https://github.com/nolly-studio/cult-ui
Documentación: https://cult-ui.com

Librería de componentes UI copy-paste para **Next.js + TypeScript + Tailwind CSS + shadcn**.
MIT license. Más de 92 patrones de agentes IA.

---

## Stack tecnológico

- **Framework**: Next.js + TypeScript
- **Estilos**: Tailwind CSS + shadcn/ui
- **IA**: Anthropic AI SDK / OpenAI
- **Scraping**: Firecrawl
- **Animaciones**: Framer Motion
- **Estado**: Zustand
- **Validación**: Zod

---

## Patrones de agentes IA destacados

| # | Nombre | Descripción |
|---|--------|-------------|
| 1 | Competitor Research Agent | Análisis competitivo completo desde una URL: pricing, posicionamiento, tech stack |
| 2 | Data Analysis Agent | Sube CSV/JSON y obtiene análisis IA: patrones, correlaciones, outliers |
| 3 | Accessibility Audit Agent | Auditoría WCAG 2.1: contraste de color, alt text, compliance |
| 4 | Table Editor Artifact | Spreadsheet con chat IA para manipular datos conversacionalmente |
| 5 | Branding Agent | Extrae design system de cualquier web: tokens, paletas, brand personality |
| 6 | Chart Generation Artifact | Visualizaciones interactivas desde conversación (finanzas, burn rate, etc.) |
| 7 | Multi-Agent Ecommerce Platform | Full-stack con orquestación multi-agente y streaming en tiempo real |
| 8 | Logo GPT | Generador de logos con IA |
| 9 | SEO Analysis Agent | Análisis SEO automatizado |
| 10 | Marketing Copy AI | Generador de copy de marketing |

---

## Instalación de componentes

\```bash
npx cult-ui add [component-name]
\```

---

## Componentes UI principales

- **AI Chat**: interfaz de chat con streaming
- **Agent Patterns**: plantillas de agentes listos para usar
- **Artifact Renderer**: renderiza outputs de agentes (tablas, gráficos, código)
- **File Upload**: drag & drop con preview
- **Tool Call UI**: visualización de tool calls en tiempo real
- **Streaming Text**: animación de texto en tiempo real

---

## Uso en proyectos RedLabs

Útil como referencia para:
- Construir interfaces de automatización para clientes
- UI para dashboards de agentes n8n
- Panels de administración de flujos
- Portales de clientes con chat IA integrado
