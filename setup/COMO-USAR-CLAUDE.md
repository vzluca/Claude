# 💸 Cómo usar Claude bien y gastar menos tokens

Guía directa para vos: usuario **Pro** que hoy escribe un prompt y listo, y siente que gasta de
más. La buena noticia: con 4 o 5 hábitos vas a rendir muchísimo más con el mismo plan. Nada de
esto es técnico.

---

## 1. Entendé de dónde sale el gasto (esto lo cambia todo)

Cada vez que mandás un mensaje en un chat, Claude **vuelve a leer TODA la conversación anterior**
para responder. No solo tu último mensaje: todo el hilo, desde el principio.

Consecuencia: **mientras más largo el chat, más caro sale cada mensaje nuevo.** Un chat de 50
idas y vueltas hace que tu mensaje 51 cueste como 51 mensajes juntos. Por eso "gastás mucho"
aunque escribas poco.

👉 **Regla de oro: un chat = un tema. Cuando cambiás de tema, abrí un chat nuevo.**

---

## 2. Los 6 hábitos que más ahorran

| # | Hábito | Por qué ahorra |
|---|---|---|
| 1 | **Chat nuevo para cada tema** | No arrastrás toda la charla vieja en cada mensaje |
| 2 | **No estirar chats eternos** | Si un chat ya está largo y seguís, abrí uno nuevo y pegá solo lo que importa |
| 3 | **Usar Proyectos** para contexto que repetís | Lo explicás **una vez** y queda guardado; no lo re-pegás en cada chat |
| 4 | **Ser específico desde el primer mensaje** | Prompt vago → 5 idas y vueltas para aclarar → 5 veces el costo |
| 5 | **Adjuntar solo lo relevante** | Pegar un archivo entero cuando te sirve un pedazo = pagás todo el archivo |
| 6 | **Elegir el modelo según la tarea** | Tareas simples no necesitan el modelo más caro (ver abajo) |

---

## 3. Proyectos: tu mayor ahorro (y ya tenés uno)

Un **Proyecto** en claude.ai guarda un "conocimiento" fijo (archivos + instrucciones) que Claude
usa en todos los chats de ese proyecto, **sin que vos lo re-expliques cada vez**. Además ese
contenido se **cachea** (queda "pre-cargado"), así que sale más barato que pegarlo a mano.

Ya armamos el Proyecto **RedLabs** (está en `redlabs/claude-project/`). Regla práctica:

- ¿Vas a hablar seguido de un mismo tema (tu empresa, un cliente, un proyecto)? → hacé un Proyecto.
- Adentro del proyecto, igual **abrí chats nuevos** por cada tarea concreta.

---

## 4. Elegí el modelo correcto

No todo necesita el modelo más potente (y más caro en tokens):

- **Tareas simples** (resumir, reformular, traducir, preguntas cortas) → un modelo rápido
  (Haiku / el "más veloz"). Gasta mucho menos.
- **Tareas difíciles** (código, razonamiento largo, análisis) → el potente (Opus/Sonnet).
- En **claude.ai** cambiás el modelo con el selector arriba del chat.
- En **Claude Code** con el comando `/model`.
- Si tenés "pensamiento extendido" (extended thinking) activado para todo, apagalo en lo simple:
  piensa más = gasta más.

---

## 5. Dónde entran las skills que instalamos

Una **skill** es un procedimiento que Claude ya tiene guardado. En vez de que vos expliques
"cómo" hacer algo cada vez (gastando tokens y tiempo), la skill le da el método hecho. Resultado:
**menos idas y vueltas y mejor resultado.** Pero recordá: **las skills solo funcionan en Claude
Code**, no en el chat común (ver `README.md`).

Ejemplos concretos para vos:
- `ponytail` → cuando pedís código, lo hace lo más simple posible (menos código = menos tokens).
- `deep-research` → investiga bien de una, en vez de 10 búsquedas sueltas.
- `humanizer` → limpia el "tono IA" de un texto sin que se lo expliques.
- `pdf` / `docx` / `xlsx` → trabajás documentos sin pelearte con el formato.

---

## 6. Ahorros extra dentro de Claude Code

Si te pasás a Claude Code (recomendado para cualquier cosa con archivos):

- `/clear` — borra el contexto del chat cuando arrancás algo nuevo (no arrastrás lo viejo).
- `/compact` — resume la conversación larga para seguir sin cargar todo el historial.
- **headroom** (instalado) — comprime automáticamente lo que Claude lee, si lo corrés en modo
  `wrap` (ver `headroom/README.md`).
- **graphify** (instalado) — en vez de que Claude lea 20 archivos para entender tu código,
  consulta un grafo ya armado (ver `graphify/README.md`).

---

## 7. Tu rutina recomendada (resumen para pegar en la heladera)

1. **Tema nuevo → chat nuevo.**
2. **Contexto que repetís → Proyecto**, no lo re-pegues.
3. **Primer mensaje claro y específico** (qué querés, para qué, en qué formato).
4. **Tarea simple → modelo rápido. Tarea difícil → modelo potente.**
5. **Cosas con archivos o código → Claude Code**, donde las skills laburan por vos.
6. Cuando un chat se hizo largo y ya resolviste → **cerralo y abrí otro.**

Con esto solo, un plan Pro te rinde el doble o más. Cualquier duda concreta ("¿esto conviene en
chat o en Claude Code?", "¿esto va a un Proyecto?"), preguntámelo y te lo digo.
