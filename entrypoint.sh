#!/bin/bash
set -e
cd /app

echo "Starting do2bot..."
python do2bot.py

"$@"
