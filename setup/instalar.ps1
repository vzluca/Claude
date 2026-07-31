# Instalador de skills + comandos de este repo en tu carpeta global ~/.claude (Windows/PowerShell).
# Uso:  powershell -ExecutionPolicy Bypass -File setup\instalar.ps1

$ErrorActionPreference = "Stop"

# Raíz del repo = carpeta padre de este script
$RepoDir = Split-Path -Parent $PSScriptRoot
$Dest = Join-Path $HOME ".claude"

Write-Host "==> Instalando desde: $RepoDir"
Write-Host "==> Destino global:   $Dest"
Write-Host ""

New-Item -ItemType Directory -Force -Path (Join-Path $Dest "skills") | Out-Null
New-Item -ItemType Directory -Force -Path (Join-Path $Dest "commands") | Out-Null

Copy-Item (Join-Path $RepoDir ".claude\skills\*")   (Join-Path $Dest "skills\")   -Recurse -Force
Copy-Item (Join-Path $RepoDir ".claude\commands\*") (Join-Path $Dest "commands\") -Recurse -Force

$Skills = (Get-ChildItem -Path (Join-Path $Dest "skills") -Recurse -Filter "SKILL.md").Count
Write-Host "OK - Copiadas skills y comandos a $Dest"
Write-Host "   Skills disponibles ahora en TODOS tus proyectos de Claude Code: $Skills"
Write-Host ""
Write-Host "==> Pasos opcionales (necesitan 'uv' - https://docs.astral.sh/uv/):"
Write-Host ""
Write-Host '   # Headroom (compresion de contexto):'
Write-Host '   uv tool install --python 3.13 "headroom-ai[all]"'
Write-Host '   claude mcp add -s user headroom -- uvx --from "headroom-ai[mcp]" headroom mcp serve'
Write-Host ""
Write-Host '   # Graphify (grafo de tu codigo):'
Write-Host '   uv tool install graphifyy'
Write-Host ""
Write-Host "Listo. Abri Claude Code y las skills se auto-activan segun lo que pidas."
