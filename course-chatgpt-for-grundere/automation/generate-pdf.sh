#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
find "$ROOT/modules" -path '*/slides/*.md' -print0 | while IFS= read -r -d '' slide; do
  out="${slide%.md}.pdf"
  pandoc "$slide" -o "$out"
  echo "Generated: $out"
done
