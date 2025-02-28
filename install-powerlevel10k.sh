echo "Installing Powerlevel10k"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo 'source $ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
echo "Powerlevel10k installed"