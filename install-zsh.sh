sudo apt update
sudo apt install fonts-firacode -y
sudo apt install zsh -y
zsh --version
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "ZSH installed"
echo $SHELL
sudo apt install build-essential curl file git


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo 'source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh' >>! ~/.
echo "Zsh Autosuggestions installed"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo 'source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>! ~/.zshrc
echo "Zsh Syntax Highlighting installed"
echo "All required software installed successfully!"
echo "Please restart your terminal to see the changes"
echo "Please run the following command to see the changes"