add-apt-repository --yes ppa:webupd8team/java
apt-get -y update
apt-get -y install oracle-java7-installer

apt-get -y install openvpn
mkdir /etc/openvpn/keys
# then copy ovpn key to /etc/openvpn/keys

#start openvpn
#cd /etc/openvpn
#setsid sudo openvpn --config basko.ovpn 

#check client is start
#sudo ps -x | grep openvpn

apt-get -y install shutter subversion rdesktop

apt-get -y autoremove

#todo idea

#gradle
wget -P /opt https://services.gradle.org/distributions/gradle-1.12-all.zip
unzip /opt/gradle-1.12-all.zip -d /opt
mv /opt/gradle-1.12 /opt/gradle
echo -e "\n export GRADLE_HOME=/opt/gradle" >> ~/.profile
echo -e "\n export PATH=\$PATH:/opt/gradle/bin:/opt/idea/bin" >> ~/.profile


wget http://download.jetbrains.com/idea/ideaIU-12.1.7b.tar.gz -P /opt
tar -xf /opt/ideaIU-12.1.7b.tar.gz -C /opt
mv /opt/idea-IU-129.1525/ /opt/idea


