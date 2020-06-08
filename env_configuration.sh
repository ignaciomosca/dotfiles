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
git config --global core.editor "vim"
