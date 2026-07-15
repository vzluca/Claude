# REDLABS — Manual de marca

> **Fuente de verdad: el sitio web en producción** (`redlabs-site`, CSS real). El Brand Book v1.1
> quedó desactualizado en colores y tipografía; de él solo se conservan el concepto del nombre,
> la construcción del isotipo y el tono de voz. Los logos están en `logos/`.

## La marca en una línea

**REDLABS conecta tus herramientas en una red que trabaja sola. Vos pedís; los workflows hacen.**

- **Qué somos**: una empresa de automatización con IA. Conectamos WhatsApp, Gmail, Drive, Sheets,
  Calendar y modelos de lenguaje con n8n como motor. También diseñamos sitios web con Claude Code.
- **Cómo suena**: joven y profesional. Sabe lo que hace y no necesita jerga para demostrarlo.
  A prueba de gente sin conocimientos técnicos.
- **Qué prometemos**: que la parte complicada quede de nuestro lado. El cliente ve resultados;
  la red hace el trabajo pesado por detrás.
- **Hero del sitio**: "Tu negocio, corriendo **solo**."
- **Eyebrow del sitio**: "Agentes de IA · Automatización · Sitios web"

## El nombre

Una palabra, dos lecturas — y las dos son la marca:

1. **RED / de conexiones** — nodos, flujos, internet. La red que une tus apps. Es el *qué hacemos*.
2. **RED / el color** — energía, señal, acción. El rojo no es decoración: es el ancla que hace
   que el nombre se lea de las dos formas a la vez. **Innegociable.**

## Isotipo y logo

Una **r minúscula** construida con ángulos rectos se combina con un **chevron «<»** (avance,
"mayor que") para formar la **R mayúscula** de REDLABS. La marca construida con las iniciales
de la marca.

### Cómo se usa en la web (implementación actual)

- **Wordmark**: `Red` en color de texto (`#F4F3F1`) + `Labs` en rojo claro (`#FF5A5F`),
  en Space Grotesk 600. Isotipo SVG a la izquierda en rojo (`#E4222A`), 28×28.
- El isotipo del sitio es un path SVG inline (`viewBox 0 0 32 32`) que usa `currentColor`.

### Archivos (en `logos/`)

| Variante | Uso | Archivo |
|---|---|---|
| Principal | Rojo sobre fondo oscuro | `redlabs-isotipo-rojo-sobre-carbon.svg` |
| Positivo | Negro sobre fondo claro | `redlabs-isotipo-negro.svg` |
| Negativo | Blanco sobre fondo oscuro | `redlabs-isotipo-blanco.svg` |
| Favicon / App | Cuadro redondeado | `redlabs-favicon.svg` / `.png` |
| Lockups (isotipo + wordmark) | rojo / negro / blanco | `redlabs-lockup-*.svg` |

> Nota: los SVG ya están recoloreados al rojo oficial `#E4222A`. El PNG `redlabs-isotipo-rojo.png`
> y `redlabs-favicon.png` conservan el rojo viejo `#EE2B24` — preferir los SVG.

### No hacer

- Cerrar los espacios entre los trazos de la R.
- Estirar, inclinar o distorsionar la proporción.
- Recolorear a tonos fuera de la paleta.

**Área de respeto**: dejar libre alrededor una distancia igual a la altura del espacio interior de la R.

## Paleta de color (oficial — la del sitio)

Sistema de dos colores a propósito: **rojo + neutros oscuros**. Nada compite con el rojo.

### Rojo

| Token | Hex | Uso |
|---|---|---|
| `--color-primary` | **`#E4222A`** | Rojo REDLABS. Isotipo, botones primarios, acentos, CTAs. |
| `--color-primary-light` | **`#FF5A5F`** | Texto acento ("Labs" del logo, eyebrows, palabras destacadas, tags). |
| `--color-primary-glow` | `rgba(228,34,42,.45)` | Glows, sombras de botones, blobs de fondo, pulsos del flow-spine. |

### Fondos (escala oscura, fría)

| Token | Hex | Uso |
|---|---|---|
| `--bg-0` | `#050506` | Negro base (nav scrolleada) |
| `--bg-1` | `#0A0A0C` | **Fondo principal del body** |
| `--bg-2` | `#0F0F12` | Superficies (browser frame) |
| `--bg-3` | `#141417` | Superficies elevadas (barras, skeletons) |

### Texto

| Token | Hex | Uso |
|---|---|---|
| `--fg` | `#F4F3F1` | Texto principal |
| `--fg-muted` | `#9C9AA3` | Texto secundario (subtítulos, descripciones) |
| `--fg-faint` | `#6C6A73` | Texto terciario (notas, footer, labels) |

### Glassmorphism

| Token | Valor | Uso |
|---|---|---|
| `--glass` | `rgba(255,255,255,.045)` | Fondo de tarjetas y botones ghost |
| `--glass-strong` | `rgba(255,255,255,.07)` | Tarjetas en hover, flow-nodes |
| `--glass-border` | `rgba(255,255,255,.09)` | Bordes de tarjetas, tabs, separadores |

Selección de texto: fondo rojo `#E4222A` con texto blanco.

## Tipografía (oficial — la del sitio)

| Rol | Fuente | Pesos | Uso |
|---|---|---|---|
| **Display** (`--font-display`) | **Space Grotesk** | 400–700 | h1/h2/h3, logo, precios, eyebrows, números de paso, flow-nodes |
| **Body** (`--font-body`) | **Inter** | 400–800 | Texto corrido, botones, tabs, navegación |

- Las fuentes van **self-hosted** en woff2 (subset latin) — nada de Google Fonts CDN.
- Titulares: `line-height: 1`, `letter-spacing: -0.03em`, peso 600.
- Escala real del sitio: h1 hero `clamp(3rem, 8.4vw, 7.2rem)`; h2 sección `clamp(2.1rem, 4vw, 3.4rem)`;
  subtítulos `1.08–1.2rem` con `line-height 1.65`; cuerpo de tarjeta `.92rem`;
  eyebrow `.78rem`, uppercase, `letter-spacing .16em`, en rojo claro con punto rojo brillante adelante.

## Sistema visual de la web

- **Botones**: píldora (`border-radius: 999px`), Inter 600. Primario: rojo pleno con glow al hover.
  Ghost: glass con borde translúcido que pasa a rojo al hover.
- **Tarjetas**: glass + blur 14px, `border-radius: 18px` (`--radius`), borde que se enciende a
  rojo translúcido al hover. Ícono en contenedor 46×46 con fondo rojo al 12%.
- **Iconografía**: trazo SVG de ~1.75–1.8px, esquinas rectas, geométricos, nunca ilustrativos.
- **Fondo ambiental**: blobs rojos difusos (blur 90px) que derivan lentamente + overlay de ruido
  fractal al 3%.
- **Flow spine**: hilo vertical estilo n8n que recorre la página con línea de progreso roja y
  pulsos animados; "flow-nodes" (píldoras glass con ícono rojo y label tipo Trigger/Filter/Deploy)
  encabezan cada sección.
- **Cursor custom**: punto rojo 6px + anillo que crece al hover (desactivado en táctil).
- **Motion**: easing `cubic-bezier(.16,1,.3,1)`, reveals con translateY(32px) + fade de 0.9s,
  marquee de stack de 30s. Todo respeta `prefers-reduced-motion`.
- **Layout**: `max-width: 1240px`, secciones con padding vertical de 150px.

## Tono de voz

**"Como alguien que sabe, explicándotelo fácil."**

1. **Claro > técnico** — nunca «orquestación de nodos»; sí «tus apps trabajando juntas».
2. **Cercano, no informal** — tuteo (voseo argentino), frases cortas, cero solemnidad, siempre con oficio.
3. **Mostrá, no presumas** — el resultado convence solo. No hace falta gritar «IA de vanguardia».

### Ejemplos de voz (copy real del sitio)

- Hero: *"Tu negocio, corriendo solo."*
- Sub: *"Conectamos WhatsApp, Gmail, Google Sheets y modelos de lenguaje para que respondas leads,
  agendes turnos y publiques contenido sin tocar un teclado."*
- CTAs: *"Ver automatizaciones"*, *"Hablemos"*, *"Armar mi combo"*, *"Pedir cotización"*.
- Precios: *"desde u$s 35/mes"* + *"o compra única u$s 350"*.
- Bienvenida de bot: *"¡Hola! 👋 Soy el asistente de [negocio]. Contame qué te gustaría dejar de
  hacer a mano y armamos el flujo. Sin vueltas técnicas. 🙂"*

## Aplicaciones

- **Instagram** (@redlabs): formato 1:1, isotipo arriba, titular corto y directo abajo, un nodo
  rojo como único acento. Fondo oscuro (`#0A0A0C`) o rojo pleno, alternados para dar ritmo.
  Hashtags: #automatización #IA #workflows.
- **Web**: secciones = Automatización (tabs Inmobiliarias / Negocios en general), Combos,
  Sitios web, Cómo trabajamos (4 pasos), stack en marquee, contacto por WhatsApp.
- **Contacto**: `hola@redlabs.com` (el del sitio) — ⚠️ el WhatsApp del sitio sigue siendo
  placeholder, reemplazar por el número real.
