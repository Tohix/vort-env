#!/usr/bin/env bash

# Test provision
echo "Provisioning virtual machine..."
sudo apt-get update

# Installing Ngix
#echo "Installing Ngix"
#    sudo apt-get install -y nginx
#    sudo apt-get install nginx

# Configuring wirtual host
#echo "Configuring virtual hosts"
#    sudo cp /var/www/provision/config/vortex /etc/nginx/sites-available/
#    sudo ln -sf /etc/nginx/sites-available/vortex /etc/nginx/sites-enabled/
#    sudo service nginx restart

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install -g npm