#!/bin/bash
set -e

curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen/Qwen2.5-7B-Instruct",
        "prompt": "I am learning vllm now. Explain paged attentation mechanism for me.",
        "max_tokens": 1024,
        "temperature": 0.1
    }'

