#!/usr/bin/env bash
set -euo pipefail

DIR="$(cd "$(dirname "$0")/.." && pwd)"
DEST="${HOME}/.claude/skills"

mkdir -p "$DEST"
rm -rf "$DEST/ai-detox"
cp -R "$DIR/.claude/skills/ai-detox" "$DEST/ai-detox"

echo "Installed ai-detox v3 to $DEST/ai-detox"
