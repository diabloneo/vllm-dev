#!/bin/bash
set -e

# This script sends two requests to the API in parallel
# to test how vllm handles concurrent requests.

curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen/Qwen2.5-7B-Instruct",
        "prompt": "I am learning vllm now. Explain paged attentation mechanism for me.",
        "max_tokens": 32,
        "temperature": 0.1
    }' &

curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen/Qwen2.5-7B-Instruct",
        "prompt": "Introduce yourself please. Tell me what can you do and how can you help me?",
        "max_tokens": 16,
        "temperature": 0.1
    }'

echo ""
