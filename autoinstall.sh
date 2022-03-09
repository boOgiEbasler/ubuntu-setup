#! /bin/bash

echo "init resources"
sudo apt-get update
sudo apt-get -f install


echo "git install"
sudo apt-get install git-all

echo "mysql client install"
sudo apt-get install mysql-client 

echo "Slack install"
sudo snap install slack --classic

echo "PHP install"
sudo apt install php libapache2-mod-php php-cli php-mysql php-dom

echo "PHP-Storm installl"
sudo snap install phpstorm --classic

echo "Postman install"
sudo snap install postman

echo "graphviz install"
sudo apt install graphviz

cd ~/Downloads

echo "Git-Kraken install"
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i ./gitkraken-amd64.deb


echo "zoom install"
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i ./zoom_amd64.deb

echo "docker install"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu focal stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "docker compose install"
sudo apt-get install docker-compose
sudo chmod 666 /var/run/docker.sock

echo "apache deamon disable"
sudo systemctl disable apache2
sudo /etc/init.d/apache2 stop

echo "teleport install"
wget https://get.gravitational.com/teleport_6.1.2_amd64.deb
sudo dpkg -i ./teleport_6.1.2_amd64.deb


