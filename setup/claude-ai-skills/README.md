# 🌐 Skills para el chat de claude.ai (navegador/app)

Paquete para subir al **chat común** de claude.ai. Todas funcionan sin instalar nada. Están
agrupadas según para qué te sirven.

### 📝 Contenido y marketing
| Archivo | Skill | Para qué te sirve |
|---|---|---|
| `humanizer.zip` | **humanizer** | Saca el "tono IA" de cualquier texto: posts de Instagram, copy de landing, mails, propuestas. |
| `deep-research.zip` | **deep-research** | Investigación sistemática (competencia, mercado, herramientas) en vez de una búsqueda superficial. |

### 🧰 Tu trabajo: web + n8n
| Archivo | Skill | Para qué te sirve |
|---|---|---|
| `frontend-design.zip` | **frontend-design** | Conversar y decidir el diseño de un sitio (dirección visual, tipografía) sin que quede genérico. |
| `web-design-guidelines.zip` | **web-design-guidelines** | Revisar una UI contra buenas prácticas de accesibilidad/UX. |
| `n8n-flows.zip` | **n8n-flows** | Planificar, explicar y **cotizar** flujos de n8n con tu stack (WhatsApp/360dialog, Sheets, OpenAI, etc.) y tu precio por nodos. |

> **Ojo**: las de "tu trabajo" sirven para **planificar y cotizar** en el chat. La **construcción
> real** de sitios y flujos conviene hacerla en **Claude Code** (ver `../PERFIL-web-y-n8n.md`),
> donde Claude puede tocar los archivos. No incluí `ui-ux-pro-max` (muy pesada) ni las de código
> puro: esas rinden solo en Claude Code.

---

## 📥 Cómo subirlas (paso a paso)

1. Entrá a **claude.ai** desde la compu.
2. Arriba a la derecha → tu inicial → **Configuración** (Settings).
3. Buscá **Capacidades** (Capabilities) → sección **Skills**.
   - Si no ves "Skills", activá primero **Análisis / Ejecución de código** (Code execution),
     que es la capacidad de la que dependen.
4. Tocá **Subir skill** (Upload skill) y elegí `humanizer.zip`.
5. Repetí con `deep-research.zip`.
6. Listo. Se activan **solas** en tus chats (nuevos y los que sigas) cuando el pedido encaja —
   ej. "reescribí esto para que no suene a IA" o "investigá bien X".

---

## 🔁 ¿No te aparece la opción de subir Skills?

En algunos planes la subida de skills personalizadas puede no estar disponible. Si es tu caso,
el plan B que **siempre** funciona en Pro:

- Abrí (o creá) un **Proyecto** en claude.ai.
- En las **instrucciones del proyecto**, pegá el contenido del `SKILL.md` de la skill que querés
  (por ejemplo el de humanizer, que está en `.claude/skills/humanizer/SKILL.md` del repo).
- Dentro de ese proyecto, Claude va a seguir esas pautas en todos los chats.

No es tan automático como una Skill, pero te da el mismo beneficio para ese proyecto.

---

## 💡 Recordá

Estas skills viven en la nube (claude.ai) una vez que las subís. Son las **mismas** que ya tenés
en `.claude/skills/` para Claude Code — acá solo van la copia que funciona en el chat del navegador.
