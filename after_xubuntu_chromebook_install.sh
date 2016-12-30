#!/bin/bash
# This is for Xubuntu 16.04 on Chromebook with SSD - you may wish to edit it


# add repos
sudo apt-add-repository -y "deb http://repository.spotify.com stable non-free"
sudo add-apt-repository -y "deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main"
sudo add-apt-repository -y "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo add-apt-repository -y "deb http://dl.google.com/linux/talkplugin/deb/ stable main"
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# go to the home directory


# basic update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# install core functionality
sudo apt-get -y install \
    htop gdebi synaptic grsync gufw

# install apps
sudo apt-get -y install \
    libxss1 spotify-client git dropbox \
    skype gimp p7zip p7zip-full p7zip-rar \
    curl gparted google-chrome-stable  build-essential 
    #tp-smapi-dkms thinkfan moc

# install xfce4 specific
sudo apt-get -y install \
    xfce4-clipman
# system changes
echo "vm.swappiness = 1" | sudo tee /etc/sysctl.conf

# requires clicks
sudo apt-get install -y xubuntu-restricted-extras


# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo " ps edit /etc/fstab "
echo "===================="
echo ""
