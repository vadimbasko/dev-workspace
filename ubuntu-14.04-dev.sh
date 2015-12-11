sudo apt-get install git

#gradle
wget -P /opt https://services.gradle.org/distributions/gradle-1.12-all.zip
unzip /opt/gradle-1.12-all.zip -d /opt
mv /opt/gradle-1.12 /opt/gradle
echo -e "\nexport GRADLE_HOME=/opt/gradle" >> ~/.profile
echo -e "\nexport PATH=\$PATH:/opt/gradle/bin:/opt/idea/bin" >> ~/.profile

#mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

sudo apt-get update

#mongodb
sudo apt-get install -y mongodb-org
