#!/bin/bash
# Correo
sudo zypper in -y geary

# Codecs
sudo zypper in -y gstreamer-plugin-aravis gstreamer-plugins-bad-codecs gstreamer-plugins-good-extra gstreamer-plugins-good-jack gstreamer-plugins-rs gstreamer-plugins-ugly-codecs gstreamer-plugins-vaapi gstreamer-transcoder

# Temas
#sudo zypper in -y materia-gtk-theme metatheme-arc-common metatheme-paper-common mojave-gtk-theme paper-icon-theme papirus-icon-theme
sudo zypper in -y paper-icon-theme papirus-icon-theme

# Google Chrome
wget https://dl.google.com/linux/linux_signing_key.pub
sudo rpm --import linux_signing_key.pub
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo zypper in -y ./google-chrome-stable_current_x86_64.rpm

# Brave Browser
sudo zypper install curl
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo --refresh https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper install brave-browser

# VSCodium
sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg
printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/zypp/repos.d/vscodium.repo
sudo zypper in -y codium

# Flatpak
sudo zypper install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install zoom
flatpak install ferdium

# OBS
#opi ulauncher
