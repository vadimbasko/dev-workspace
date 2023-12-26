# fix PCIe error 
# https://askubuntu.com/a/1222375
# https://askubuntu.com/questions/771899/pcie-bus-error-severity-corrected
# in /etc/default/gub set
# GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pci=nomsi"
# then run 
# sudo update-grub

# apt update 
sudo apt update
# update ubuntu
sudo apt upgrade

sudo apt install -y baobab mc git-all gnome-tweak-tool xclip gnome-shell-extensions httpie jq vlc peek curl clementine cheese

sudo add-apt-repository ppa:hluk/copyq --yes
sudo apt update
sudo apt install -y copyq

sudo add-apt-repository ppa:peek-developers/stable --yes
sudo apt update
sudo apt install peek -y

sudo wget -P /opt https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /opt/google-chrome-stable_current_amd64.deb

# pinta
sudo apt install ca-certificates gnupg
sudo gpg --homedir /tmp --no-default-keyring --keyring /usr/share/keyrings/mono-official-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb [signed-by=/usr/share/keyrings/mono-official-archive-keyring.gpg] https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
sudo apt update
sudo apt install mono-devel --yes
sudo apt install pinta --yes

# development

curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
sudo apt install nodejs -y

npm i -g lerna

# postgres
# https://www.postgresql.org/download/linux/ubuntu/
sudo apt install postgresql-12 -y

# jdk
# https://askubuntu.com/questions/1157417/install-adoptopenjdk-onto-ubuntu-18-04-lts

# config

# autohide toopbar 
# https://ubuntuhandbook.org/index.php/2020/08/top-panel-auto-hide-ubuntu-20-04/
sudo apt install -y gnome-shell-extension-autohidetopbar
# restart gnome shell, AND THEN ENABLE “Hide Top Bar” IN "Extensions" APP
killall -3 gnome-shell

# autohide left bar (dock)
# settings -> apperarnce -> behavior 

# desktop matrix (workspace matrix)  
sudo apt-get install chrome-gnome-shell
# In FIERFOX add extension
# https://addons.mozilla.org/en-US/firefox/addon/gnome-shell-integration/
# install extension to ubuntu via fierfox
# https://extensions.gnome.org/extension/1485/workspace-matrix/ 

# show clocks on topbar
gsettings set org.gnome.desktop.interface clock-show-seconds true

# disable chrome password check warning
# chrome://settings/security?search=Warn+you+if+passwords+are+exposed+in+a+data+breach

#headset sennheiser gsp670
#https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile/releases/tag/1.2
wget https://github.com/szszoke/sennheiser-gsp670-pulseaudio-profile/releases/download/1.2/pulseaudio-sennheiser-gsp670_1.2_all.deb
sudo dpkg -i pulseaudio-sennheiser-gsp670_1.2_all.deb
pulseaudio -k
pulseaudio --start

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.0-birthday.10/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# idea config
# https://youtrack.jetbrains.com/articles/IDEA-A-2/Inotify-Watches-Limit
# changing IDE default directories
# https://intellij-support.jetbrains.com/hc/en-us/articles/207240985-Changing-IDE-default-directories-used-for-config-plugins-and-caches-storage
# ide commit window
# https://intellij-support.jetbrains.com/hc/en-us/community/posts/360008115520-Version-Control-Tab-is-missing

# DELL touchpad
# https://www.dell.com/support/kbdoc/en-in/000150104/precision-xps-ubuntu-general-touchpad-mouse-issue-fix
