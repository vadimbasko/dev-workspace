#gradle
wget -P /opt https://services.gradle.org/distributions/gradle-1.12-all.zip
unzip /opt/gradle-1.12-all.zip -d /opt
mv /opt/gradle-1.12 /opt/gradle
echo -e "\nexport GRADLE_HOME=/opt/gradle" >> ~/.profile
echo -e "\nexport PATH=\$PATH:/opt/gradle/bin:/opt/idea/bin" >> ~/.profile
