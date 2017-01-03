#!/bin/bash
# This is for Xubuntu 16.04 on Chromebook with SSD - you may wish to edit it


# add repos
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

# go to the home directory
cd ~


# basic update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# install core functionality
sudo apt-get -y install \
    htop gdebi synaptic grsync gufw zsh

# install apps
sudo apt-get -y install \
    libxss1 git tp-smapi-dkms \
    skype gimp p7zip p7zip-full p7zip-rar \
    curl gparted  build-essential

cd ~/Pobrane
wget https://mega.nz/linux/MEGAsync/xUbuntu_16.10/amd64/megasync-xUbuntu_16.10_amd64.deb
sudo gdebi --n megasync-xUbuntu_$(lsb_release -sr)_amd64.deb

# install xfce4 specific
sudo apt-get -y install \
    xfce4-clipman
# system changes
echo "vm.swappiness = 1" | sudo tee -a /etc/sysctl.conf

# config zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"


# requires clicks
sudo apt-get install -y xubuntu-restricted-extras


# prompt for a reboot
clear
echo ""
echo "=========================="
echo " CZAS URUCHOMIĆ PONOWNIE! "
echo " nie zpomnij o /etc/fstab "
echo " i skonfiguruj PREZTOrc   "
echo "=========================="
echo ""
