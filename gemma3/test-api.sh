#!/bin/bash

# Call the server using curl:
curl -X POST "http://localhost:8000/v1/chat/completions" \
	-H "Content-Type: application/json" \
	--data '{
		"model": "google/gemma-3-4b-it-qat-int4-unquantized",
		"messages": [
			{
				"role": "user",
				"content": [
					{
						"type": "text",
						"text": "Who are you? How can you help me?"
					}
				]
			}
		]
	}'
