#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
missing=0
for file in $(find "$ROOT" -name '*.md' | sort); do
  if ! head -n 1 "$file" | grep -q '^---$'; then
    echo "Missing frontmatter: $file"
    missing=1
  fi
done

for required in modules prompts assets templates automation docs; do
  if [ ! -d "$ROOT/$required" ]; then
    echo "Missing folder: $ROOT/$required"
    missing=1
  fi
done

exit $missing
