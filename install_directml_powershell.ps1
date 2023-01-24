param([string]$env_name)

if ($env_name -eq $null) {
    Write-Host "Please provide the name of the new environment as an argument."
    exit
}

# Check if Conda is installed on the system
$conda_installed = $(Get-Command conda -ErrorAction SilentlyContinue)

if ($null -eq $conda_installed) {

    Write-Output "Start downloading and installing miniconda:latest version. This may take a few minutes."

    # Download the Miniconda installer
    Invoke-WebRequest -Uri https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe -OutFile Miniconda3-latest-Windows-x86_64.exe

    # Install Miniconda
    Start-Process -FilePath .\Miniconda3-latest-Windows-x86_64.exe -ArgumentList "/InstallationType=JustMe /RegisterPython=0 /AddToPath=0 /S /D=$env:USERPROFILE\Miniconda3" -Wait

    Write-Output "Miniconda has been installed. Please restart your terminal and run this script again."

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
conda install pytorch cpuonly -c pytorch -y
pip install torch-directml
