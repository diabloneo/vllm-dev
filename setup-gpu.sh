#!/bin/bash

set -e
set -o pipefail

# This projects setup a ubuntu 22.04 instance with a vLLM development environment.
if [[ "$USER" -ne "ubuntu" ]]; then
	echo "Please run as ubuntu"
	exit 1
fi

echo "Changing to home directory"
cd ~

echo "Set hostname to vllm-dev"
sudo hostnamectl set-hostname vllm-dev

echo "Installing development dependencies"
sudo apt-get update -y
sudo apt-get install -y gcc-12 g++-12 libnuma-dev python3-dev
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-12 10 --slave /usr/bin/g++ g++ /usr/bin/g++-12

echo "Installing uv"
curl -LsSf https://astral.sh/uv/install.sh | sh
uv version

echo "Create venv for vllm"
uv venv venv --python 3.12 --seed

echo "Cloning vllm project"
git clone https://github.com/vllm-project/vllm.git
