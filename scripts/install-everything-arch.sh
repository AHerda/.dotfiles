#!/usr/bin/env bash


# Some basic progrmas
sudo pacman -S stow nvim i3 rofi polybar picom eww feh alacritty python-pywal pulseaudio neofetch fzf zoxide

# Install programs for the visual effects
sudo pacman -S xorg xorg-xinit
echo "Check for the brand of your graphix card and install appropriate driver (https://wiki.archlinux.org/title/xorg)"
lspci -v | grep -A1 -e VGA -e 3D
pacman -Ss xf86-video


# Install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-higlighting
git clone https://github.com/zsh-users/zsh-synt... ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl -s https://ohmyposh.dev/install.sh | bash -s

# Install vim-plug for customizing neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# Ensure correct directory
cd ~/.dotfiles

# Copy (link) dotfiles to home directory
stow .
