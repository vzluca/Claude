# Graphify — instalación

[Graphify](https://github.com/Graphify-Labs/graphify) mapea un proyecto entero (código, docs,
PDFs, imágenes, videos) en un **grafo de conocimiento** que se consulta en vez de grepear.
El código se parsea con AST (tree-sitter, determinista, 100 % local, sin LLM); docs/PDF/imágenes
usan el modelo de tu asistente. Se invoca con `/graphify`. Licencia Apache-2.0 / MIT.

## Qué quedó instalado en este repo

- **`.claude/skills/graphify/`** — la skill `/graphify` con sus `references/`. Al estar en
  `.claude/skills/`, Claude Code la auto-descubre en cualquier sesión sobre este repo (ya se
  cargó apenas se agregó). **La skill sola no basta**: para generar el grafo necesita el CLI
  (abajo).
- **`CLAUDE.md`** (raíz) — reglas de runtime: cuando exista `graphify-out/graph.json`, consultar
  el grafo (`graphify query/path/explain`) antes de leer archivos crudos.

## Lo que tenés que instalar en tu máquina (el runtime)

```bash
uv tool install graphifyy        # instala el CLI (o: pipx install graphifyy)
# sin instalar: uvx --from graphifyy graphify <cmd>   (¡el paquete es "graphifyy", no "graphify"!)
```

Después, en tu asistente:

```
/graphify .        # mapea el directorio actual → graphify-out/{graph.html, GRAPH_REPORT.md, graph.json}
graphify query "mostrame el flujo de auth"
graphify update .  # re-mapea tras cambios (solo AST, sin costo de API)
```

## Hooks opcionales (usar el grafo automáticamente)

El instalador oficial puede registrar hooks que empujan al asistente a consultar el grafo antes
de leer archivos. **No los versioné** acá a propósito: el instalador escribe una ruta absoluta al
binario (que apunta al caché de la sesión donde se corrió y no existiría en tu máquina). Para
tenerlos bien, corré en tu compu, dentro del repo:

```bash
graphify install --project            # escribe .claude/skills + hooks con la ruta correcta de TU máquina
graphify install --project --strict   # además bloquea la 1ª lectura cruda por sesión y la manda al grafo
```

## Servidor MCP (opcional, requiere un grafo ya generado)

Una vez que exista `graphify-out/graph.json`:

```bash
python -m graphify.serve graphify-out/graph.json                 # stdio
python -m graphify.serve graphify-out/graph.json --transport http --port 8080   # HTTP para un equipo
```

Expone `query_graph`, `get_node`, `get_neighbors`, `shortest_path`, etc. No se agregó al
`.mcp.json` del repo porque sin `graph.json` fallaría al arrancar; configuralo cuando tengas el grafo.

## Enlaces

- Repo: https://github.com/Graphify-Labs/graphify
- PyPI: https://pypi.org/project/graphifyy/
