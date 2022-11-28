#!/bin/bash
# custom reps
echo '# Set up custom reps'
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo add-apt-repository restricted
sudo apt update
# Install media codecs
echp '# Install media codecs'
sudo apt install ubuntu-restricted-extras
# tweaks
echo '# Install gnome-tweak-tool'
sudo apt install gnome-tweak-tool
sudo apt install gnome-shell-extensions
# nemo
echo '# Set up nemo'
sudo apt install nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
gsettings set org.gnome.desktop.background show-desktop-icons false
gsettings set org.nemo.desktop show-desktop-icons true
# terminator
echo '# Set up terminator'
sudo apt install terminator
mkdir -p ~/.config/terminator/
cp config ~/.config/terminator/
# zsh
echo '# Set up zsh'
sudo apt install zsh
zsh --version
sudo apt install zsh git fonts-font-awesome
## Oh-my-zshell
echo '# Set up Oh-my-zshell'
sudo chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
### theme powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
source ~/.zshrc
cp .zshrc ~.zshrc

# sublime
echo '# Set up sublime-text'
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
mkdir -p /home/mik/.config/sublime-text/Packages/
cp -r User ~/.config/sublime-text/Packages/
