#!/bin/bash

export VLLM_CONFIGURE_LOGGING=1
export VLLM_LOGGING_CONFIG_PATH=./log_config.json
model="Qwen/Qwen2.5-7B-Instruct"
# model="google/gemma-3-4b-it-qat-int4-unquantized"
vllm serve ${model} \
	--kv-transfer-config \
	'{"kv_connector":"SharedStorageConnector","kv_role":"kv_both","kv_connector_extra_config": {"shared_storage_path": "local_storage"}}'

