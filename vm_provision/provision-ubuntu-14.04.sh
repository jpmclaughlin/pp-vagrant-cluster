#!/usr/bin/env bash

# Intended for Ubuntu 14.04 (Trusty)

# Update Ubuntu
apt-get update

# # git
# echo "----- Provision: Installing git..."
# apt-get install -y git
#
# Node
echo "----- Provision: Installing Node..."
apt-get install -y nodejs

# npm
echo "----- Provision: Installing NPM..."
apt-get install -y npm

# nginx
echo "----- Provision: Installing nginx..."
apt-get install -y nginx

# Install app dependencies
echo "----- Provision: Installing app dependencies..."
cd /vagrant
npm install

# # start app
# echo "----- Provision: Starting app..."
# cd /vagrant
# nodejs ./bin/www

# # forever
# echo "----- Provision: Installing forever..."
# npm install -g forever
#
# # Cleanup
# apt-get -y autoremove
# #
# # # Restart nginx
# echo "----- Provision: Starting nginx..."
# service nginx start
