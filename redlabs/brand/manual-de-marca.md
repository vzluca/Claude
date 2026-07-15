# REDLABS — Manual de marca

> Fuentes: Brand Book oficial v1.1 (2026), sitio web `redlabs-site` (Firebase) y assets de
> "Identidad visual REDlabs". Los logos están en `logos/`.

## La marca en una línea

**REDLABS conecta tus herramientas en una red que trabaja sola. Vos pedís; los workflows hacen.**

- **Qué somos**: una empresa de automatización con IA. Conectamos WhatsApp, Gmail, Drive, Sheets,
  Calendar y modelos de lenguaje con n8n como motor. También diseñamos sitios web con Claude Code.
- **Cómo suena**: joven y profesional. Sabe lo que hace y no necesita jerga para demostrarlo.
  A prueba de gente sin conocimientos técnicos.
- **Qué prometemos**: que la parte complicada quede de nuestro lado. El cliente ve resultados;
  la red hace el trabajo pesado por detrás.
- **Tagline del brand book**: "Automatización con IA que cualquiera entiende."
- **Hero del sitio**: "Tu negocio, corriendo **solo**."

## El nombre

Una palabra, dos lecturas — y las dos son la marca:

1. **RED / de conexiones** — nodos, flujos, internet. La red que une tus apps. Es el *qué hacemos*.
2. **RED / el color** — energía, señal, acción. El rojo no es decoración: es el ancla que hace
   que el nombre se lea de las dos formas a la vez. **Innegociable.**

## Isotipo

Una **r minúscula** construida con ángulos rectos se combina con un **chevron «<»** (avance,
"mayor que") para formar la **R mayúscula** de REDLABS. La marca construida con las iniciales
de la marca.

### Variantes (archivos en `logos/`)

| Variante | Uso | Archivo |
|---|---|---|
| Principal | Rojo sobre carbón | `redlabs-isotipo-rojo-sobre-carbon.svg` |
| Positivo | Negro sobre hueso | `redlabs-isotipo-negro.svg` |
| Negativo | Blanco sobre carbón | `redlabs-isotipo-blanco.svg` |
| Favicon / App | Cuadro redondeado | `redlabs-favicon.svg` / `.png` |
| Lockups (isotipo + wordmark) | rojo / negro / blanco | `redlabs-lockup-*.svg` |

En texto, el wordmark del sitio se escribe **Red<b>Labs</b>** con "Labs" en rojo claro.

### No hacer

- Cerrar los espacios entre los trazos de la R.
- Estirar, inclinar o distorsionar la proporción.
- Recolorear a tonos fuera de la paleta.

**Área de respeto**: dejar libre alrededor una distancia igual a la altura del espacio interior de la R.

## Paleta de color

Sistema de dos colores a propósito: **rojo + neutros**. Nada compite con el rojo.

### Paleta oficial (Brand Book)

| Nombre | Hex | Uso |
|---|---|---|
| **Rojo REDLABS** | `#EE2B24` | Color dominante: isotipo, acentos, CTAs. Funciona sobre claro y oscuro. |
| Carbón | `#15110F` | Fondo oscuro |
| Grafito | `#34302C` | Superficie |
| Humo | `#8C837C` | Texto secundario |
| Hueso | `#F4EFE6` | Fondo claro |

### Paleta implementada en el sitio web (CSS actual)

| Variable | Hex | Uso |
|---|---|---|
| `--color-primary` | `#E4222A` | Rojo principal (botones, acentos) |
| `--color-primary-light` | `#FF5A5F` | Rojo claro (texto acento, "Labs" del logo, eyebrows) |
| `--color-primary-glow` | `rgba(228,34,42,.45)` | Glow/sombras del rojo |
| `--bg-0` a `--bg-3` | `#050506` / `#0A0A0C` / `#0F0F12` / `#141417` | Escala de fondos casi negros |
| `--fg` | `#F4F3F1` | Texto principal |
| `--fg-muted` | `#9C9AA3` | Texto secundario |
| `--fg-faint` | `#6C6A73` | Texto terciario |
| `--glass` / `--glass-border` | blanco al 4.5% / 9% | Glassmorphism de tarjetas |

> ⚠️ **Discrepancia a resolver**: el Brand Book define el rojo como `#EE2B24` y fondos cálidos
> (carbón `#15110F`, hueso `#F4EFE6`); el sitio usa `#E4222A` y fondos fríos casi negros.
> Hasta que se unifique: usar la paleta del **sitio** para trabajo web y la del **Brand Book**
> para piezas de marca (posts, papelería, presentaciones).

## Tipografía

### Según Brand Book (oficial)

- **Titulares**: **Tomorrow** — geométrica, angular, pesos 100–900. Dialoga con los ángulos rectos
  y el chevron del isotipo. Alternativas: Quantico, Bricolage Grotesque.
- **Cuerpo y labels**: **Instrument Sans** — neutra, precisa, muy legible. Pesos 400–700.
  Alternativa: Plus Jakarta Sans.

### Según sitio web (implementado)

- **Display** (`--font-display`): **Space Grotesk** (400–700) — títulos, precios, eyebrows, logo.
- **Body** (`--font-body`): **Inter** (400–800) — texto corrido, botones.

> ⚠️ Misma discrepancia que el color: el sitio se construyó con Space Grotesk + Inter antes del
> Brand Book v1.1. Decidir si se migra el sitio a Tomorrow + Instrument Sans o se actualiza el book.

### Escala tipográfica (Brand Book)

| Nivel | Tamaño |
|---|---|
| Display | 56–132px |
| Título de sección | 34–64px |
| Subtítulo / destacado | 20–24px |
| Cuerpo | 16–18px |
| Etiqueta / eyebrow | 11–13px |

## Iconografía y patrones

- Íconos **de trazo (2px), esquinas rectas**, geométricos, nunca ilustrativos — coherentes con
  los ángulos de la R. Set base: workflow, mensajes, correo, agenda, datos, documentos, agente IA.
- Patrones repetibles de **nodos** y **chevrons** ("una red que se puede repetir hasta el infinito").
- En el sitio: estética glassmorphism (blur + bordes blancos translúcidos), blobs rojos difusos de
  fondo, "flow spine" estilo n8n que recorre la página con pulsos animados, cursor custom,
  esquinas `18px` (tarjetas) y botones píldora (`999px`).

## Tono de voz

**"Como alguien que sabe, explicándotelo fácil."**

1. **Claro > técnico** — nunca «orquestación de nodos»; sí «tus apps trabajando juntas».
2. **Cercano, no informal** — tuteo (voseo argentino), frases cortas, cero solemnidad, siempre con oficio.
3. **Mostrá, no presumas** — el resultado convence solo. No hace falta gritar «IA de vanguardia».

### Ejemplos de voz

- Titular de landing: *"Vos pedís en WhatsApp. La red hace el resto — sin que toques una sola línea de código."*
- Bienvenida de bot: *"¡Hola! 👋 Soy el asistente de [negocio]. Contame qué te gustaría dejar de hacer a mano y armamos el flujo. Sin vueltas técnicas. 🙂"*
- Cierre del brand book: *"Hecho para que la parte complicada quede de nuestro lado."*

## Aplicaciones

- **Instagram** (@redlabs): formato 1:1, isotipo arriba, titular corto y directo abajo, un nodo
  rojo como único acento. Fondo carbón o rojo pleno, alternados en el feed para dar ritmo.
  Hashtags: #automatización #IA #workflows.
- **Web**: secciones = Automatización (servicios con precios "desde u$s X/mes o compra única"),
  Combos, Sitios web, Cómo trabajamos (4 pasos), stack en marquee, contacto por WhatsApp.
- **Contacto**: `hola@redlabs.com` (sitio) / `hola@redlabs.io` (brand book) — ⚠️ confirmar cuál
  es el dominio real y unificar.
