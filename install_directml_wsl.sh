#!/bin/bash

# Check if an argument is passed
if [ $# -eq 0 ]; then
    echo "Please provide the name of the environment as an argument."
    exit 1
fi

# Check if conda is already installed
if ! hash conda 2>/dev/null; then
    # Download and install Miniconda
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
    bash Miniconda3-latest-Linux-x86_64.sh
fi

# Create a new conda environment
conda create --name $1 -y

# Activate the environment
conda activate $1

# Install necessary packages
conda install numpy pandas tensorboard matplotlib tqdm pyyaml -y
pip install opencv-python
pip install wget
pip install torchvision

# Install PyTorch
conda install pytorch cpuonly -c pytorch

# Install the Torch-DirectML Plugin
pip install torch-directml
