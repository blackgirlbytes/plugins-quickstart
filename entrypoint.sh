#!/bin/bash
SERVER_URL=${SERVER_URL:-http://localhost:5003}
sed -i 's|server.url:.*|server.url: "'$SERVER_URL'"|g' openapi.yaml .well-known/ai-plugin.json
python main.py
