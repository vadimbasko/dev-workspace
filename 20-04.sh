# fix PCIe error 
# https://askubuntu.com/questions/771899/pcie-bus-error-severity-corrected
# in /etc/default/gub set
# GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pci=nomsi"
# then run 
# sudo update-grub

# apt update 
sudo apt update
# update ubuntu
sudo apt upgrade

sudo apt install -y baobab mc git-all gnome-tweak-tool xclip gnome-shell-extensions httpie jq vlc

udo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install -y copyq

# development

#nvm node e.t.c frontend
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
nvm install 14.18.1
npm i -g lerna

# postgres
# https://www.postgresql.org/download/linux/ubuntu/

# jdk
# https://adoptopenjdk.net/installation.html#linux-pkg
# https://askubuntu.com/questions/1157417/install-adoptopenjdk-onto-ubuntu-18-04-lts
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
sudo apt update
sudo apt install -y adoptopenjdk-11-hotspot

# config

# autohide toopbar 
# https://ubuntuhandbook.org/index.php/2020/08/top-panel-auto-hide-ubuntu-20-04/
sudo apt install -y gnome-shell-extension-autohidetopbar
# restart gnome and enable “Hide Top Bar” in "Extensions" app

# show clocks on topbar
gsettings set org.gnome.desktop.interface clock-show-seconds true

#fix after hp drivers (hplip)  install
sudo mv /etc/xdg/autostart/hplip-systray.desktop /etc/xdg/autostart/hplip-systray.desktop.old

#headset senheiser 670
#https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile/releases/tag/1.2
wget https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile/releases/download/1.2/pulseaudio-sennheiser-gsp670_1.2_all.deb
sudo dpkg -i pulseaudio-sennheiser-gsp670_1.2_all.deb
pulseaudio -k
pulseaudio --start
 
