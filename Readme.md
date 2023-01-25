# Important (It is under development and has not been released yet)

# DirectML Auto Installation Scripts

This repository contains two scripts to automate the installation of [DirectML](https://github.com/microsoft/DirectML) on a new conda environment. DirectML is a high-performance machine learning library by Microsoft that enables efficient training of large models on systems with limited resources.

## Getting Started

These instructions will help you set up DirectML on your system.

### Prerequisites

- [Miniconda](https://docs.conda.io/en/latest/miniconda.html) or [Anaconda](https://www.anaconda.com/products/distribution/)
- A system with Windows Subsystem for Linux (WSL) or Windows 10 version 2004 or later

### Installing DirectML

1. Clone or download this repository.
2. Open a terminal and navigate to the directory where the scripts are located.
3. Run the appropriate script for your system:
   - For WSL, run `bash install_directml_wsl.sh env_name`
   - For Windows, run `install_directml_powershell.ps1 env_name`

The script will create a new conda environment with the name `env_name`, install the necessary packages, and install DirectML.

### Troubleshooting

- If you encounter any issues running the scripts, make sure that you have the latest version of Miniconda or Anaconda installed and that your system meets the prerequisites.
- Depending on your system configuration, you might need to run the script with admin privilages.

## Authors

- **Mehran Mousavi** -  You may find me on [Linkedin](https://www.linkedin.com/in/mehran-mousavi/)  if you'd like to connect with me there as well. I look forward to hearing from you!

## License

This project is licensed under the MIT License.
