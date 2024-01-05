#!/bin/bash

# Set up NVM environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # loads nvm bash_completion

#!/bin/bash

# Specify the port your application should use
APP_PORT=9000

# Check if the port is in use
if sudo lsof -i :$APP_PORT; then
  echo "Port $APP_PORT is in use. Stopping the process..."
  
  # Find the process ID (PID) using the port
  PID=$(sudo lsof -t -i:$APP_PORT)

  # Stop the process using the port
  sudo kill -9 $PID
  
  echo "Process stopped successfully."
else
  echo "Port $APP_PORT is not in use."
fi

# Start your application
echo "Starting the application..."
# Add your command to start the application here, e.g., npm start
# Example: npm start or node server.js

# Replace the command below with the actual command to start your Nest.js application
cd /path/to/your/nest-app
npm install
npm run start:prod

echo "Application started successfully."
