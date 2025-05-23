#!/usr/bin/env bash
set -Eeuo pipefail
GAME_PATH=${GAME_PATH:-"$HOME/Games/q2repro"}
stow -R q2repro -t "$GAME_PATH"

