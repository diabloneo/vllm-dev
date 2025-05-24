#!/bin/bash
set -e

curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen/Qwen2.5-7B-Instruct",
        "prompt": "Introduce yourself please. Tell me what can you do and how can you help me? I particularly interest in programming. I want to learn vLLM for AI and ML. Do you know knowledge on these fields? Can you give me some tips to start my learning?",
        "max_tokens": 1024,
        "temperature": 0.1
    }'

