#!/bin/bash
# Stop all servers and start the server
cd /home/ec2-user/nest-demo
npm install
npm run build
npm run start:prod