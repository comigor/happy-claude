#!/bin/bash
set -e

claude --version
happy --version

cd /workspace

if happy auth status | grep -q 'Machine registered'; then
    happy
else
    echo "Happy not authenticated. Run "
    echo 'docker compose up -d'
    echo 'docker exec -it happy happy auth login'
    echo "and restart the container."
fi
