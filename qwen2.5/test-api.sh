#!/bin/bash
set -e

curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen/Qwen2.5-7B-Instruct",
        "prompt": "Introduce yourself please. Tell me what can you do and how can you help me?",
        "max_tokens": 32,
        "temperature": 0.1
    }'

echo ""
