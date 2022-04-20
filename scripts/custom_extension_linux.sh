#!/bin/sh

#clear bash history

history -c
sudo apt-get update


#Install Apache Server

sudo apt-get install apache2 -y

#Replace text in the index.html file

sudo sed -i '224s|\(.*\)|Welcome to your Server for the Virtual Machine Offers Workshop!\1|' /var/www/html/index.html

#Restart the apache server

sudo service apache2 restart
