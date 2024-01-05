#!/bin/bash
# Stop all servers and start the server

# Set up NVM environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion

# Navigate to the application directory
cd /home/ec2-user/nest-demo

# Install Node.js dependencies
npm install

# Build the Nest.js application
npm run build

# Start the Nest.js application with pm2
~/.nvm/versions/node/$(nvm version)/bin/pm2 start dist/main.js
