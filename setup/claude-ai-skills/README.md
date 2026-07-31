# 🌐 Skills para el chat de claude.ai (navegador/app)

Paquete recomendado para **tu caso** (usás el chat común y hacés contenido/marketing de RedLabs).
Estas dos skills funcionan 100% en el chat normal, sin instalar nada:

| Archivo | Skill | Para qué te sirve |
|---|---|---|
| `humanizer.zip` | **humanizer** | Saca el "tono IA" de cualquier texto: posts de Instagram, copy de landing, mails, propuestas. Los deja sonando humanos. |
| `deep-research.zip` | **deep-research** | Cuando investigás algo (competencia, mercado, una herramienta), en vez de una búsqueda superficial hace una investigación sistemática y te da una respuesta mucho mejor. |

> No incluí seo, brainstorming, etc.: esas dependen de herramientas o scripts que en el chat del
> navegador **no corren**. Menos y mejor.

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
