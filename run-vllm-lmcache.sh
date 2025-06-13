#!/bin/bash

export VLLM_CONFIGURE_LOGGING=1
export VLLM_LOGGING_CONFIG_PATH=./log_config.json
model="Qwen/Qwen2.5-7B-Instruct"
# model="google/gemma-3-4b-it-qat-int4-unquantized"
export LMCACHE_CONFIG_PATH=./lmcache_config.yaml
vllm serve ${model} \
	--kv-transfer-config \
	'{"kv_connector":"LMCacheConnectorV1", "kv_role":"kv_both"}'
