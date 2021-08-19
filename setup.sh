#!/bin/sh
# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Linking config files"

ln -sf $(pwd)/alacritty/ ~/.config/
ln -sf $(pwd)/bspwm ~/.config/
ln -sf $(pwd)/mpd ~/.config/
ln -sf $(pwd)/picom ~/.config/
ln -sf $(pwd)/polybar ~/.config/
ln -sf $(pwd)/powerlevel10k ~/.config/
ln -sf $(pwd)/rofi/* ~/.config/rofi/
ln -sf $(pwd)/sxhkd ~/.config/

ln -sf $(pwd)/zshrc ~/.zshrc
