# ubuntu-package-install-script
The script automates installation of my favorite packages on Ubuntu 20.04 minimal install

I usually use this script to automate installation of additional packages on fresh installed Ubuntu.  
The script will check if the package is already in the system, hence only the missing packages will be installed.

It uses apt and snap package managers and installs next packages:
1. Chrome browser,
2. PyCharm,
3. Webstorm,
4. Telegram,
5. Gnome-control-center

### Usage
```bash
./install.sh
```

