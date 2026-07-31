#!/usr/bin/env bash
# Instalador de skills + comandos de este repo en tu carpeta global ~/.claude (Mac/Linux).
# Uso:  bash setup/instalar.sh
set -euo pipefail

# Raíz del repo = carpeta padre de este script
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="$HOME/.claude"

echo "==> Instalando desde: $REPO_DIR"
echo "==> Destino global:   $DEST"
echo

mkdir -p "$DEST/skills" "$DEST/commands"

# Copiar skills y comandos (sin borrar lo que ya tengas)
cp -R "$REPO_DIR/.claude/skills/." "$DEST/skills/"
cp -R "$REPO_DIR/.claude/commands/." "$DEST/commands/"

SKILLS=$(find "$DEST/skills" -maxdepth 2 -name SKILL.md | wc -l | tr -d ' ')
echo "✅ Copiadas skills y comandos a $DEST"
echo "   Skills disponibles ahora en TODOS tus proyectos de Claude Code: $SKILLS"
echo
echo "==> Pasos opcionales (necesitan 'uv' — https://docs.astral.sh/uv/):"
echo
echo "   # Headroom (compresión de contexto):"
echo "   uv tool install --python 3.13 \"headroom-ai[all]\""
echo "   claude mcp add -s user headroom -- uvx --from \"headroom-ai[mcp]\" headroom mcp serve"
echo
echo "   # Graphify (grafo de tu código):"
echo "   uv tool install graphifyy"
echo
echo "Listo. Abrí Claude Code y las skills se auto-activan según lo que pidas."
