#!/bin/bash

# Actualización inicial
sudo zypper dup

# Packman
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ "Packman Repository"
sudo zypper dup --from "Packman Repository" --allow-vendor-change
sudo zypper in -y fetchmsttfonts free-ttf-fonts terminus-ttf-fonts opengost-ttf-fonts saja-cascadia-code-fonts google-inconsolata-fonts fira-code-fonts lato-fonts hack-fonts ubuntu-fonts fontawesome-fonts fontawesome-fonts-web
sudo zypper in -y geary chromium chromium-ffmpeg-extra chromium-plugin-widevinecdm opera telegram-desktop tilix nautilus-extension-tilix tilix-lang opi
sudo zypper in -y mpd mpd-doc mpDris2 mpDris2-lang ncmpcpp clementine tuner spotify-easyrpm vlc vlc-codecs
spotify-easyrpm

# nVidia
sudo zypper ar -cfp 90 https://download.nvidia.com/opensuse/tumbleweed/ "nVidia Graphics Drivers"
sudo zypper dup --from "nVidia Graphics Drivers" --allow-vendor-change
sudo zypper inr 

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

# Desarrollo
sudo zypper in -y filezilla git apache2 apache2-mod_php8 php8 php8-gettext php8-mysql php8-pgsql phpMyAdmin mariadb mariadb-test mariadb-tools octave octave-doc R-base rstudio-desktop jupyter-jupyterlab jupyter-jupyterlab-latex python310-scikit-build python310-scikit-dsp-comm python310-scikit-hep-testdata python310-scikit-image python310-scikit-learn python310-scikit-sound python310-scikit-sparse python310-scikit-umfpack python310-sklearn-pandas python310-numpy python310-sympy
sudo zypper in -y texmaker kbibtex gnome-latex texlive-exam texlive-exam-doc texlive-exam-n texlive-exam-n-doc texlive-exam-randomizechoices texlive-exam-randomizechoices-doc texlive-examdesign texlive-examdesign-doc texlive-example texlive-examplep texlive-examplep-doc

# Quitar paquetes innecesarios
sudo zypper rm PackageKit opensuse-welcome opensuse-welcome-lang 
sudo zypper al PackageKit opensuse-welcome opensuse-welcome-lang 

# Flatpak
sudo zypper install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install zoom
flatpak install ferdium

# OBS
opi ulauncher
