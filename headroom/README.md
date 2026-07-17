# Headroom — instalación

[Headroom](https://github.com/headroomlabs-ai/headroom) es una **capa de compresión de
contexto para agentes de IA**: comprime lo que el agente lee (salidas de herramientas, logs,
RAG, archivos, historial) antes de que llegue al LLM. Menos tokens, misma respuesta.
Reduce 60–95 % en datos JSON y 15–20 % en agentes de código. Es local-first y reversible.
Licencia Apache 2.0.

> **Importante**: el runtime real es el CLI de Python (`headroom-ai` en PyPI). Las tres vías
> de abajo (MCP, plugin, wrap) necesitan ese CLI instalado en **tu máquina**. No se puede
> instalar de forma persistente desde una sesión web/remota como esta (el contenedor es efímero).

---

## 1. CLI (el runtime — instalar primero, en tu máquina)

```bash
# Opción recomendada: como herramienta global aislada (necesita uv)
uv tool install --python 3.13 "headroom-ai[all]"

# o con pip
pip install "headroom-ai[all]"
```

Verificá que quedó andando:

```bash
command -v headroom     # debe devolver una ruta
headroom doctor         # chequeo de salud
```

Extras granulares si no querés `[all]`: `[proxy]`, `[mcp]`, `[ml]`, `[code]`, `[memory]`,
`[relevance]`, `[image]`, `[langchain]`, `[agno]`, `[evals]`. Requiere Python 3.10+.

Modos de uso del CLI:

```bash
headroom deploy               # despliegue local turnkey + configura tu agente
headroom wrap claude          # envuelve un agente (claude, codex, cursor, aider, copilot…)
headroom unwrap claude        # deshace el wrap
headroom proxy --port 8787    # proxy drop-in, sin cambiar código
headroom dashboard            # dashboard de ahorro en vivo (con el proxy corriendo)
```

---

## 2. Servidor MCP (ya configurado en este repo)

Este repo trae un `.mcp.json` en la raíz que registra el servidor MCP de Headroom:

```json
{
  "mcpServers": {
    "headroom": {
      "command": "uvx",
      "args": ["--from", "headroom-ai[mcp]", "headroom", "mcp", "serve"]
    }
  }
}
```

Con eso, al abrir Claude Code (u otro cliente MCP) en este repo, quedan disponibles las
herramientas `headroom_compress`, `headroom_retrieve` y `headroom_stats`. `uvx` descarga el
paquete on-demand, así que sólo necesitás tener [`uv`](https://docs.astral.sh/uv/) instalado.

Si tu cliente MCP no hereda el `PATH` (p. ej. Codex), instalá el CLI como herramienta uv
persistente y apuntá a la ruta absoluta:

```bash
uv tool install "headroom-ai[all]"
command -v headroom     # copiá esta ruta al campo "command" del MCP config
```

---

## 3. Plugin de Claude Code (hooks)

El repo publica un marketplace de plugins. En una **sesión interactiva** de Claude Code:

```
/plugin marketplace add headroomlabs-ai/headroom
/plugin install headroom@headroom-marketplace
```

El plugin `headroom` instala hooks (`SessionStart` y `PreToolUse` sobre Bash) que ejecutan
`headroom init hook ensure` para levantar el runtime local automáticamente.

> ⚠️ Estos hooks corren en cada comando bash y **requieren que el CLI del paso 1 ya esté
> instalado**. Sin el CLI, los hooks fallan. Instalá primero el CLI, después el plugin.

---

## Enlaces

- Repo: https://github.com/headroomlabs-ai/headroom
- Docs: https://headroom-docs.vercel.app/docs
- PyPI: https://pypi.org/project/headroom-ai/
- Modelo (compresor de texto): https://huggingface.co/chopratejas/kompress-v2-base
