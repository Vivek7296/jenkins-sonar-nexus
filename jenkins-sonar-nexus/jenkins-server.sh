#!/bin/bash  
# this is Shebang script using /bin/bash to run commands

################################################################################################
# Jenkins Installation
################################################################################################

sudo apt update -y  # It will update repo 
sudo apt install fontconfig openjdk-21-jre -y # It will install Openjdk

sudo java -version  # It will check java version

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y  # It will install jenkins
echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

sudo systemctl start jenkins  # It will start jenkins
sudo systemctl enable jenkins  # It will enable jenkins to start on boot