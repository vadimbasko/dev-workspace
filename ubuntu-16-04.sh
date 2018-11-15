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

#touchpad
synclient PalmDetect=1

#huawei modem
lsusb
#Bus 001 Device 004: ID 12d1:1f01 Huawei Technologies Co., Ltd. E353/E3131 (Mass storage mode)
sudo usb_modeswitch -v 12d1 -p 1f01 -J

#fonts for LibreOffice Draw
sudo apt install ttf-mscorefonts-installer

#shortcut for shutdown
gnome-session-quit --power-off --force
