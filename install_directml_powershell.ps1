param([string]$env_name)

if ($env_name -eq $null) {
    Write-Host "Please provide the name of the new environment as an argument."
    exit
}

# Create new environment
conda create --name $env_name python=3.10 numpy pandas tensorboard matplotlib tqdm pyyaml -y

# Activate the new environment
conda activate $env_name

# Install necessary packages
pip install opencv-python
pip install wget
pip install torchvision
conda install pytorch cpuonly -c pytorch
pip install torch-directml
