#!/bin/bash

# to see favorite apps `dconf read /org/gnome/shell/favorite-apps`


sudo apt update
sudo apt upgrade


echo "==================================================Chrome"
echo ""

if apt list --installed | grep google-chrome
then 
    echo "Chrome browser is already installed"
else
    echo "Install Chrome browser..."
    echo ""
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo rm -rf google-chrome-stable_current_amd64.deb
fi

if ! (dconf read /org/gnome/shell/favorite-apps | grep google-chrome)
then gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'google-chrome.desktop']"
fi
    

echo "==================================================PyCharm"
echo ""

echo "Install PyCharm IDE..."
echo ""
sudo snap install pycharm-community --classic

if ! (dconf read /org/gnome/shell/favorite-apps | grep pycharm)
then gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'pycharm-community_pycharm-community.desktop']"
fi


echo "==================================================WebStorm"
echo ""

echo "Install WebStorm IDE"
echo ""
sudo snap install webstorm --classic

if ! (dconf read /org/gnome/shell/favorite-apps | grep webstorm)
then gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'webstorm_webstorm.desktop']"
fi


echo "==================================================Telegram"
echo ""

echo "Install Telegram"
echo ""
sudo snap install telegram-desktop

if ! (dconf read /org/gnome/shell/favorite-apps | grep telegram)
then gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'telegram-desktop_telegram-desktop.desktop']"
fi


echo "==================================================Gnome-control-center"
echo ""

if apt list --installed | grep google-chrome
then 
    echo "Gnome-control-center is already installed"
else
    echo "Install Gnome-control-center..."
    echo ""
    sudo apt install gnome-control-center
fi

echo "=================================================="
echo ""







