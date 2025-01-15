#!/bin/bash
set -e

# Create needed dirs
echo "Creating necessary directories..."
mkdir -p "$HOME/.vim/plugged" "$HOME/.vim/undodir"

# Download vim-plug
echo "Downloading vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Execute PlugInstall
echo "Installing plugins via vim-plug..."
vim +PlugInstall -c "qa"

echo "Vim setup completed!"
