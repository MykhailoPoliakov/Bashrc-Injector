#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VENV="$DIR/scraper/.venv"

if [ ! -d "$VENV" ]; then
    echo "No venv found — creating one..."
    python3 -m venv "$VENV"
fi

"$VENV/bin/pip" install -q -r "$DIR/scraper/requirements.txt"
"$VENV/bin/python" -m scraper "$@"