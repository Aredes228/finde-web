#!/bin/bash
# Publica el reporte del finde en GitHub Pages.
# Uso: ./publicar.sh
set -e
cd "$(dirname "$0")"
if [ -z "$(git status --porcelain)" ]; then
  echo "Sin cambios: nada para publicar."
  exit 0
fi
git add -A
git commit -m "Propuestas finde $(date +%Y-%m-%d)"
git push origin main
echo "Publicado. Puede tardar ~1 min en verse en la web."
