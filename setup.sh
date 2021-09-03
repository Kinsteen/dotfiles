#!/bin/sh

# Install fonts for zsh
mkdir -p ~/.local/share/fonts

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O ~/.local/share/fonts/MesloLGS NF Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O ~/.local/share/fonts/MesloLGS NF Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O ~/.local/share/fonts/MesloLGS NF Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O ~/.local/share/fonts/MesloLGS NF Bold Italic.ttf

fc-cache -f # Rebuild all font cache

# Install oh my zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O omzsh.sh
chmod +x omzsh.sh
CHSH=yes RUNZSH=no sh omzsh.sh --unattended
rm omzsh.sh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Linking config files"

ln -sf $(pwd)/alacritty/ ~/.config/
ln -sf $(pwd)/bspwm ~/.config/
#ln -sf $(pwd)/mpd ~/.config/
ln -sf $(pwd)/picom ~/.config/
ln -sf $(pwd)/polybar ~/.config/
ln -sf $(pwd)/powerlevel10k ~/.config/
ln -sf $(pwd)/rofi/* ~/.config/rofi/
ln -sf $(pwd)/sxhkd ~/.config/

ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/p10k.zsh ~/.p10k.zsh
ln -sf $(pwd)/xinitrc ~/.xinitrc
