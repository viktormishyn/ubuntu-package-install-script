#!/bin/bash

# to see favorite apps `dconf read /org/gnome/shell/favorite-apps`


sudo apt update
sudo apt upgrade

echo ""
echo "==================================================Git"
echo ""

if git --version
then
    echo "Git is already installed"
else
    echo "Install Git..."
    echo ""
    sudo apt install git-all
fi

echo ""
echo "==================================================Chrome"
echo ""

if google-chrome --version
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
    
echo ""
echo "==================================================PyCharm"
echo ""

echo "Install PyCharm IDE..."
echo ""
sudo snap install pycharm-community --classic

if ! (dconf read /org/gnome/shell/favorite-apps | grep pycharm)
then gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'pycharm-community_pycharm-community.desktop']"
fi

echo ""
echo "==================================================WebStorm"
echo ""

echo "Install WebStorm IDE"
echo ""
sudo snap install webstorm --classic

if ! (dconf read /org/gnome/shell/favorite-apps | grep webstorm)
then gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'webstorm_webstorm.desktop']"
fi

echo ""
echo "==================================================Telegram"
echo ""

echo "Install Telegram"
echo ""
sudo snap install telegram-desktop

if ! (dconf read /org/gnome/shell/favorite-apps | grep telegram)
then gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'telegram-desktop_telegram-desktop.desktop']"
fi

echo ""
echo "==================================================Gnome-control-center"
echo ""

if gnome-control-center --version
then 
    echo "Gnome-control-center is already installed"
else
    echo "Install Gnome-control-center..."
    echo ""
    sudo apt install gnome-control-center
fi

echo ""
echo "==================================================LibreOffice"
echo ""

sudo snap install libreoffice

echo ""
echo "==================================================Flameshot"
echo ""

# command name for shortcut: `flameshot gui`

if flameshot --version
then
    echo "Flameshot is already installed"
else
    echo "Install Flameshot..."
    echo ""
	sudo apt install flameshot
fi

echo ""
echo "=================================================="
echo ""






