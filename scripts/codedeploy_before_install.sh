#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

# install pm2 globally
sudo npm install pm2 -g

#create our working directory if it doesnt exist
DIR="/home/ubuntu/nest-demo"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi