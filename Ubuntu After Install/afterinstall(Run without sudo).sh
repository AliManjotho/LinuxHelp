#! /bin/bash

sudo apt update
sudo apt -y upgrade
sudo apt -y install uget
sudo apt -y install qbittorrent
sudo apt -y install vlc
sudo apt -y install timeshift
sudo apt -y install stacer
sudo apt -y install gnome-tweaks
# sudo apt -y install gnome-chess
# sudo apt -y install kmplot
sudo apt -y install fonts-noto

cd ~/Downloads
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

sudo sed -i 's/google-chrome-stable/google-chrome-stable --force-device-scale-factor=1.0/g' /usr/share/applications/google-chrome.desktop

# sudo snap install glimpse-editor

sudo sed -i 's/ur_PK/en_US/g' /etc/default/locale

sudo cp bliss.jpg /usr/share/backgrounds/

gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.session idle-delay 0
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.system.locale region 'en_US.UTF-8'
gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/bliss.jpg'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/bliss.jpg'
gsettings set org.gnome.desktop.background picture-options 'stretched'
gsettings set org.gnome.desktop.screensaver picture-options 'stretched'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background secondary-color '#000000'



gsettings set org.gnome.mutter center-new-windows true

gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ copy '<Primary>c'
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ paste '<Primary>v'



profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
profile=${profile:1:-1}

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/ background-color "#2E3436"
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/ foreground-color "#FFFFFF"
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/ bold-is-bright true

sudo sed -i '/Icon=/c\Icon=/usr/share/pixmaps/faces/bicycle.jpg' /var/lib/AccountsService/users/ali


sudo apt -y install libglib2.0-dev-bin
wget github.com/thiggy01/change-gdm-background/raw/master/change-gdm-background
sudo chmod +x change-gdm-background
sudo ./change-gdm-background /usr/share/backgrounds/bliss.jpg