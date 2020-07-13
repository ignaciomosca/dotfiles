#!/bin/sh

# Install basic programs
sudo apt install vim zsh git curl wget make shutter xclip

# Use zsh
sudo chsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerline10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

# Install SDKMAN
curl -s "https://get.sdkman.io" | zsh

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh

# Git config
git config --global user.name "Ignacio Mosca"
git config --global user.email "ignaciomosca@outlook.com"
git config --global core.editor "vim"

# Install Docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt-get install docker-compose -y


# Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator `which kitty` 50
sudo update-alternatives --config x-terminal-emulator

# Install JDK
sdk install java
sdk install maven
sdk install sbt

# Install Ammonite
sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.1.4/2.13-2.1.4) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm' && amm

# Install Haskell
sudo apt install haskell-platform

# Install Erlang/Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt-get update
sudo apt-get install esl-erlang
sudo apt-get install elixir



