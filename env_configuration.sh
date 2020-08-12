#!/bin/sh

# Update
sudo apt update -y

# Install basic programs
sudo apt install -y vim zsh git curl wget make xclip direnv gpg inotify-tools libreadline-dev libssl-dev automake autoconf

# Install themes
sudo apt install -y qt5-style-kvantum qt5-style-kvantum-themes

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
sudo apt-get install -y \
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
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo apt-get install -y docker-compose 

# Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator `which kitty` 50
sudo update-alternatives --config x-terminal-emulator

# Install Scala
curl -Lo cs https://git.io/coursier-cli-linux && chmod +x cs && ./cs setup

# Install JDK
sdk install java
sdk install maven
sdk install sbt

# Install Haskell
sudo apt install -y haskell-platform

# Install Erlang/Elixir
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb
sudo apt-get update
sudo apt-get install -y esl-erlang elixir

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


