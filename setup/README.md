# 🎛️ Setup de Claude — todo en un lugar

Esta carpeta engloba **todo lo que tenés instalado** en este repositorio (skills, comando,
servidor MCP y CLIs) más las guías para cargarlo en tu máquina y para **usar Claude gastando
menos tokens**. Si sos nuevo en esto, leé este archivo entero: está escrito para que se entienda
sin saber nada técnico.

## 📁 Qué hay en esta carpeta

| Archivo | Para qué sirve |
|---|---|
| `README.md` (este) | El mapa general + cómo instalar + qué es local y qué no |
| `INVENTARIO.md` | La lista completa y detallada de las 83 skills, el comando, el MCP y los CLIs |
| `COMO-USAR-CLAUDE.md` | Guía para gastar menos tokens y usar Claude bien (tu pedido principal) |
| `instalar.sh` | Script para Mac/Linux: copia todo a tu carpeta `~/.claude` |
| `instalar.ps1` | Script para Windows (PowerShell): hace lo mismo |

---

## 🧠 Lo primero que tenés que entender: hay DOS "Claude" distintos

Esto es la clave de todo y casi nadie lo explica. Lo que instalamos **solo sirve en uno de los dos**.

### 1. Claude en el navegador / app (claude.ai, app de celular o escritorio)
- Es donde vos escribís un prompt y listo. Corre **en la nube** (servidores de Anthropic).
- **NO lee tu carpeta del disco.** Las skills, el MCP y los CLIs de este repo **no funcionan acá.**
- Lo único que sí podés cargar acá son **Skills subidas a mano** en Configuración (más abajo) y
  los **Proyectos** (como el de RedLabs que armamos).

### 2. Claude Code (la herramienta de programación)
- Existe como **app de escritorio, extensión de editor, terminal, y también en el navegador**
  en [claude.ai/code](https://claude.ai/code). **No es solo para programar**: sirve para
  cualquier tarea con archivos.
- **Acá SÍ funcionan las 83 skills, el comando, el MCP y los CLIs** — porque Claude Code sí lee
  tu carpeta `~/.claude` del disco.
- Las skills se **auto-activan solas** cuando tu pedido encaja con lo que hacen. No hay que
  llamarlas a mano (aunque podés, escribiendo `/nombre-de-skill`).

> **Resumen:** si querés aprovechar todo esto, tu mejor jugada es empezar a usar **Claude Code**
> (te sirve el del navegador, no necesitás instalar nada raro). En el chat común de claude.ai,
> solo aplican las Skills que subas a mano y los Proyectos.

---

## 🔌 ¿Qué cosas son "locales" y cuáles usan internet?

| Cosa | ¿Dónde vive / corre? | ¿Privado? |
|---|---|---|
| **Skills** (`.claude/skills/`) | Archivos de texto **en tu disco**. Claude Code los lee de ahí. | ✅ 100% local, no se suben a ningún lado |
| **Comando** (`.claude/commands/`) | Igual, archivo local | ✅ Local |
| **MCP: headroom** | Un programa que **corre en tu máquina** (se baja solo con `uvx`). Comprime contexto localmente. | ✅ Local-first |
| **CLI: headroom** | Programa que instalás en tu máquina (`uv`/`pip`) | ✅ Local (el ahorro real de tokens sale de acá) |
| **CLI: graphify** (`graphifyy`) | Programa en tu máquina; mapea tu código con AST local | ✅ El código no sale de tu máquina |
| **Chat de claude.ai / Proyectos** | **En la nube**, servidores de Anthropic | ❌ Vive en la nube |

Traducción: **todo lo de este repo es local y privado.** Lo único que está en la nube es el chat
normal de claude.ai y los Proyectos.

---

## 💾 Cómo cargarlo en tu PC (cuando estés en tu máquina de casa)

La idea: cloná este repo en tu PC y corré el script que copia todo a tu carpeta global `~/.claude`
(así las skills quedan disponibles en **todos** tus proyectos de Claude Code, no solo en este repo).

### Paso 1 — Cloná el repo
```bash
git clone https://github.com/vzluca/Claude.git
cd Claude
```

### Paso 2 — Corré el instalador

**Mac o Linux:**
```bash
bash setup/instalar.sh
```

**Windows (PowerShell):**
```powershell
powershell -ExecutionPolicy Bypass -File setup\instalar.ps1
```

Eso copia las **83 skills** y el **comando** a `~/.claude/skills/` y `~/.claude/commands/`.
Desde ese momento, cualquier sesión de Claude Code en tu máquina los ve.

### Paso 3 (opcional) — Los CLIs y el MCP
Estos necesitan `uv` instalado ([cómo instalar uv](https://docs.astral.sh/uv/getting-started/installation/)).
El script te imprime estos comandos al final; los corrés si querés:

```bash
# Headroom (compresión de contexto) — ver headroom/README.md
uv tool install --python 3.13 "headroom-ai[all]"

# Graphify (grafo de tu código) — ver graphify/README.md
uv tool install graphifyy

# Registrar el MCP de headroom en TODOS tus proyectos de Claude Code:
claude mcp add -s user headroom -- uvx --from "headroom-ai[mcp]" headroom mcp serve
```

---

## 🌐 ¿Y para el chat normal de claude.ai (navegador)?

Como ahí no se lee tu disco, si querés algunas de estas skills en tus chats comunes tenés que
**subirlas a mano**:

1. En claude.ai → **Configuración → Capacidades → Skills** (o "Capabilities").
2. Subís la carpeta de la skill que quieras (ej. `.claude/skills/ponytail/`).
3. Queda disponible y se auto-activa en tus chats nuevos y en los que continúes.

Decime cuáles querés y te preparo un paquete listo para subir (esto era "lo otro" que teníamos
pendiente).

---

## 👉 Próximo paso recomendado para vos

Leé **`COMO-USAR-CLAUDE.md`**. Ahí está lo que más te importa: **cómo dejar de gastar tokens de
más**. En dos líneas: empezá chats nuevos para temas nuevos, usá Proyectos para no re-explicar tu
contexto, y para trabajo con archivos/código pasate a Claude Code (donde las skills trabajan por
vos).
