# updates

# drivers

#tools
sudo apt install -y mc

# CopyQ
sudo add-apt-repository ppa:hluk/copyq -y
sudo apt update
sudo apt install -y copyq

sudo add-apt-repository ppa:webupd8team/java && sudo apt update
sudo apt install oracle-java8-installer

#equalizer run as qpaeq
sudo apt-get install pulseaudio-equalizer
#fix equalizer for ubuntu
sudo cp /etc/pulse/default.pa /etc/pulse/default.pa.bak
sudo tee -a /etc/pulse/default.pa <<EOF 

#modules for proper work equalizer
load-module module-equalizer-sink
load-module module-dbus-protocol
EOF
#restart pulseaudio
pulseaudio -kill

#touchpad
#for kubuntu - instal synaptics
sudo apt install xserver-xorg-input-synaptics
#Option "FingerLow" "integer"
#When finger pressure drops below this value, the driver counts it as a release. Property: "Synaptics Finger"
#Option "FingerHigh" "integer"
#When finger pressure goes above this value, the driver counts it as a touch. Property: "Synaptics Finger"
synclient PalmDetect=1 FingerLow=30 FingerHigh=50

#huawei modem
lsusb
#Bus 001 Device 004: ID 12d1:1f01 Huawei Technologies Co., Ltd. E353/E3131 (Mass storage mode)
sudo usb_modeswitch -v 12d1 -p 1f01 -J

#fonts for LibreOffice Draw
sudo apt install ttf-mscorefonts-installer

#shortcut for shutdown
gnome-session-quit --power-off --force

#laptop battery management
sudo add-apt-repository ppa:linrunner/tlp
sudo apt update
sudo apt-get install tlp tlp-rdw

#fix nodejs fs.inotify.max_user_watches
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

#realtek wifi driver
git clone https://github.com/lwfinger/rtlwifi_new.git
cd rtlwifi_new
make
sudo make install
sudo su -
echo "options rtl8723be ant_sel=2" > /etc/modprobe.d/50-rtl8723be.conf
exit
sudo modprobe -r rtl8723be
sudo modprobe rtl8723be

#force not use swap
echo vm.swappiness=0 | sudo tee -a /etc/sysctl.conf

#fix pinta
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel



