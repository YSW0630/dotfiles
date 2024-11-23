#!/bin/bash
set -e

VIM_PLUG_DIR="$HOME/.vim/pack/plugins/start/vim-plug/autoload/"
VIM_THEMES_DIR="$HOME/.vim/pack/themes/start/"

# Create needed dirs
echo "Creating necessary directories..."
mkdir -p "$VIM_PLUG_DIR" "$VIM_THEMES_DIR" "$HOME/.vim/plugged" "$HOME/.vim/undodir"

# Download vim-plug
echo "Downloading vim-plug..."
curl -fLo "$VIM_PLUG_DIR/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Execute PlugInstall
echo "Installing plugins via vim-plug..."
vim +PlugInstall -c "qa"

# Clone themes
echo "Cloning themes..."
cd "$VIM_THEMES_DIR"
git clone git@github.com:catppuccin/vim.git catppuccin
git clone git@github.com:dracula/vim.git dracula
git clone git@github.com:YSW0630/molokai-matchOrange.git
git clone git@github.com:nordtheme/vim.git nord
git clone git@github.com:tomasiser/vim-code-dark.git

echo "Vim setup completed!"
