#!/bin/bash

set -e

Installing-ZSH() {
    echo "Installing ZSH..."
    sudo apt install zsh
    chsh -s $(which zsh) && echo -e "\e[1;32m Success installing ZSH"
}

Installing-Oh-My-ZSH() {
    echo "Installing Oh-My-ZSH..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && echo -e "\e[1;32m Success installing Oh-My-ZSH"
}

Adding-plugins() {
    echo "Adding plugins..."
    sed "82 s/plugins=()/plugins=( git web-search nvm github zsh-autosuggestions zsh-syntax-highlighting )/" ~/.zshrc && echo -e "\e[1;32m Success Added Plugins"
}

Adding-Syntax-highlighting-Auto-complete() {
    echo "Adding Syntax-highlighting and Auto-complete"
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions && rm -rf zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting && rm -rf zsh-syntax-highlighting
    echo -e "\e[1;32m Success Added Syntax-highlighting-Auto-complete"
}
Installing-ZSH && Installing-Oh-My-ZSH && Adding-plugins && Syntax-highlighting-Auto-complete
