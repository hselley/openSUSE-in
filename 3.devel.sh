#!/bin/bash

# Desarrollo

## Web
sudo zypper in filezilla git apache2 apache2-mod_php8 php8 php8-gettext php8-mysql php8-pgsql phpMyAdmin mariadb mariadb-test mariadb-tools 
sudo zypper in docker docker-compose docker-buildx

## Numérico
sudo zypper in octave octave-doc R-base #rstudio-desktop 

## Python 
sudo zypper in -y jupyter-jupyterlab python313-scikit-build python313-scikit-dsp-comm python313-scikit-hep-testdata python313-scikit-image python313-scikit-learn python313-scikit-sound python313-scikit-sparse python313-sklearn-pandas python313-numpy python313-sympy python313-prettytable
sudo zypper in -y python313-matplotlib python313-matplotlib-latex jupyter-matplotlib jupyter-nbconvert-latex jupyter-octave-kernel wine

## LaTeX
sudo zypper in -y kbibtex texlive-exam texlive-exam-doc texlive-exam-n texlive-exam-n-doc texlive-exam-randomizechoices texlive-exam-randomizechoices-doc texlive-examdesign texlive-examdesign-doc texlive-example texlive-examplep texlive-examplep-doc texlive-libertinus-doc texlive-libertinus-fonts texlive-libertinus-fonts-doc texlive-libertinus-fonts-fonts texlive-libertinus-otf-doc texlive-libertinus-type1 texlive-libertinus-type1-doc texlive-libertinus-type1-fonts texlive-libertinust1math texlive-libertinust1math-doc texlive-libertinust1math-fonts texlive-libertinus
