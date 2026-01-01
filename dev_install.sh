# install basic dev tool

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential -y
sudo apt install git curl wget unzip tree vim -y

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo apt install python3-pip -y

sudo apt install golang-go -y

source ~/.bashrc
