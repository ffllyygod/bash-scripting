# install basic dev tool

sudo apt update && sudo apt upgrade -y
# installs gcc make gnu
sudo apt install build-essential -y
# installs git curl wget unzip tree vim
sudo apt install git curl wget unzip tree vim -y

# installs nvm node manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# installs docker and enables it, also create a docker grp using newgrp docker so u dont have to mention sudo everytime using docker
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# installs rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo apt install python3-pip -y

sudo apt install golang-go -y

source ~/.bashrc
