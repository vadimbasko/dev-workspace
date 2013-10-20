#mkdir /prj
#chmod 777 /prj
#mkdir /prj/ubuntu

apt-get -y autoremove
apt-get -y purge aisleriot gnome-sudoku mahjongg ace-of-penguins gnomine gbrainy onboard

#skype repository
add-apt-repository --yes "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
#google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

add-apt-repository --yes ppa:diodon-team/stable webupd8team/sublime-text-3
#codecs for openshot
add-apt-repository --yes ppa:jon-severinsson/ffmpeg
apt-get update

apt-get -y install skype diodon sublime-text-installer git gitk gxneur aspell-ru google-chrome-stable

echo 'install skype'
apt-get -y install skype
echo 'skype fonts fix - remove fonts-nanum'
apt-get -y purge fonts-nanum  

#add sublimetext to path
export PATH=$PATH:/opt/sublime_text

echo 'install file manager krusader, system settings required for switch off sound'
apt-get -y install krusader, systemsettings

apt-get -y install vlc openshot ffmpeg hugin wine winetricks gstreamer0.10-plugins-ugly gstreamer0.10-plugins-bad

apt-get -y install vnstat mc openssh-server xrdp

echo 'configuration - show xneural icon on tray'
gsettings set com.canonical.Unity.Panel systray-whitelist "['all']"

echo 'disable login sounds'
mv /usr/share/sounds/ubuntu/stereo/system-ready{,-disabled}.ogg
mv /usr/share/sounds/ubuntu/stereo/desktop-login{,-disabled}.ogg

echo 'asus keyboard backlight - switch off on startup'
touch /etc/init/keyboard-brightness.conf 
chmod 777 /etc/init/keyboard-brightness.conf
echo -e "#switch off keyboard brightness on start up \necho 0 | tee /sys/class/leds/asus::kbd_backlight/brightness" > /etc/init/keyboard-brightness.conf 
