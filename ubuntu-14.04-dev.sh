sudo apt-get install -y git npm nodejs-legacy

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

#mono
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian multiverse" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
echo "deb http://download.mono-project.com/repo/debian wheezy-apache24-compat main" | sudo tee -a /etc/apt/sources.list.d/mono-xamarin.list
sudo apt-get update

#ssh keys permissions
sudo chmod 600  ~/.ssh/keys/xxx/id_rsa
sudo chmod 600  ~/.ssh/keys/xxx/id_rsa.pub 
sudo chmod 755  ~/.ssh/keys/xxx/

