#!/bin/bash
# Bundle main.tex + references.bib into a tarball for arXiv upload.

set -euo pipefail
cd "$(dirname "$0")"

DATE=$(date +%Y%m%d)
OUT="dist/zk-microstructure-arxiv-${DATE}.tar.gz"
mkdir -p dist

tectonic main.tex >/dev/null 2>&1
PAGES=$(pdfinfo main.pdf 2>/dev/null | awk '/^Pages:/ {print $2}')
echo "Build OK: ${PAGES} pages."

tar czf "$OUT" main.tex references.bib

echo "Created $OUT ($(du -h "$OUT" | cut -f1))."
