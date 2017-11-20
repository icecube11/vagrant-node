#!/bin/bash

sudo echo "Europe/London" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata

sudo apt-get update -y
sudo apt-get install -y build-essential curl git libssl-dev man mongodb-clients

git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
echo "source ~/.nvm/nvm.sh" >> ~/.profile
source ~/.profile

# install the latest LTS version of node
nvm install --lts node
nvm alias default lts/*

npm install -g browserify
npm install -g eslint
npm install -g find-versions
npm install -g forany
npm install -g grunt-cli
npm install -g harp
npm install -g http-server
npm install -g knockat
npm install -g less
npm install -g mocha
npm install -g pm2
npm install -g pm2-web
npm install -g reqd
npm install -g uglify-js

echo "cd ~/projects" >> ~/.profile

ssh-keyscan github.com >> ~/.ssh/known_hosts

echo ""
echo "Everything done, have a nice day :-)!"
