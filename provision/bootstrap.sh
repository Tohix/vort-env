#!/usr/bin/env bash

# Test provision
echo "Provisioning virtual machine..."

# Installing PHP
echo "Installing PHP"
    add-apt-repository ppa:ondrej/php5-5.6 -y
    apt-get update
    apt-get install python-software-properties -y
    apt-get install php5-common php5-dev php5-cli php5-fpm -y

echo "Installing PHP extensions"
    apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y

# Installing Apache
echo "Installing Apache"
    apt-get install apache2 -y

# Installing MySQL
echo "Install MySQL"
    apt-get install debconf-utils -y
    debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
    debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
    apt-get install mysql-server-5.6 -y

# Configuring wirtual host
echo "Configuring virtual hosts"
    cp /var/www/provision/config/vhost.conf /etc/apache2/sites-available/vhost.conf
    ln -s /etc/apache2/sites-available/vhost.conf /etc/apache2/sites-enabled/
    a2dissite 000-default.conf
    service apache2 restart