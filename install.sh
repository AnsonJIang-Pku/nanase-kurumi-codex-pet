#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$ROOT_DIR/kurumi-v3"
PET_ID="kurumi"
PET_ROOT="${CODEX_HOME:-$HOME/.codex}/pets"
PET_DIR="$PET_ROOT/$PET_ID"

if [[ ! -f "$SRC_DIR/pet.json" ]]; then
  echo "Error: missing $SRC_DIR/pet.json" >&2
  exit 1
fi

if [[ ! -f "$SRC_DIR/spritesheet.webp" ]]; then
  echo "Error: missing $SRC_DIR/spritesheet.webp" >&2
  exit 1
fi

mkdir -p "$PET_DIR"
cp "$SRC_DIR/pet.json" "$PET_DIR/pet.json"
cp "$SRC_DIR/spritesheet.webp" "$PET_DIR/spritesheet.webp"

cat <<MSG
Installed Nanase Kurumi Codex Pet.

Pet directory:
  $PET_DIR

Next steps:
  1. Restart ChatGPT / Codex.
  2. Open Settings > Pets.
  3. Refresh the pet list and choose 胡桃.

In Codex CLI, try:
  /pets
  /pets kurumi
MSG
