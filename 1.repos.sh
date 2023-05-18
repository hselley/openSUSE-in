#!/bin/bash

# Actualización inicial
sudo zypper dup

# Paquetes básicos
sudo zypper in -y exa fish zsh git-subrepo-zsh-completion flatpak-zsh-completion exa-zsh-completion alacritty-zsh-completion neovim alacritty alacritty alacritty-fish-completion alacritty-bash-completion alacritty-zsh-completion
#chsh -s /usr/bin/fish

# Packman
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ "Packman Repository"
sudo zypper dup --from "Packman Repository" --allow-vendor-change

# Familias de fuentes tipográficas
sudo zypper in -y fetchmsttfonts free-ttf-fonts terminus-ttf-fonts opengost-ttf-fonts saja-cascadia-code-fonts google-inconsolata-fonts fira-code-fonts lato-fonts hack-fonts ubuntu-fonts fontawesome-fonts fontawesome-fonts-web
sudo zypper in libertinus-fonts libertinus-fonts   

# Aplicaciones varias
sudo zypper in -y chromium chromium-ffmpeg-extra chromium-plugin-widevinecdm opera telegram-desktop tilix nautilus-extension-tilix tilix-lang opi

# Multimedia
sudo zypper in -y mpd mpd-doc mpDris2 mpDris2-lang ncmpcpp clementine tuner spotify-easyrpm vlc vlc-codecs
spotify-easyrpm

# nVidia
#sudo zypper ar -cfp 90 https://download.nvidia.com/opensuse/tumbleweed/ "nVidia Graphics Drivers"
#sudo zypper dup --from "nVidia Graphics Drivers" --allow-vendor-change
#sudo zypper inr 

# Quitar paquetes innecesarios
sudo zypper rm PackageKit opensuse-welcome opensuse-welcome-lang 
sudo zypper rm gnome-shell-classic gnome-shell-extension-desktop-icons
sudo zypper al PackageKit opensuse-welcome opensuse-welcome-lang 
