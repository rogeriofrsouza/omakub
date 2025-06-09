# Configure the bash shell using Omakub defaults
[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/omakub/configs/bashrc ~/.bashrc

# Install ZSH
sudo apt install -y zsh
chsh -s $(which zsh)
cp ~/.local/share/omakub/configs/zshrc ~/.zshrc

# ZSH plugins
export ZSH_PLUGINS_DIR="~/.zsh"
git clone https://github.com/Aloxaf/fzf-tab $ZSH_PLUGINS_DIR/fzf-tab
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PLUGINS_DIR/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $ZSH_PLUGINS_DIR/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions.git $ZSH_PLUGINS_DIR/zsh-completions.git

# Load the PATH for use later in the installers
source ~/.local/share/omakub/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
# Configure the inputrc using Omakub defaults
cp ~/.local/share/omakub/configs/inputrc ~/.inputrc
