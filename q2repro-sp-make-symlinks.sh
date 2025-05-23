#!/usr/bin/env bash
set -Eeuo pipefail
GAME_PATH=${GAME_PATH:-"$HOME/Games/q2repro-sp"}
stow -R q2repro-sp -t "$GAME_PATH"

