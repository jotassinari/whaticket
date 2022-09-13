#!/bin/bash
#cd /home/deploy/whaticket/backend/

pm2 stop dist/server.js --name whaticket-backend
rm -rf /home/deploy/whaticket/backend/dist
npm run build
pm2 start dist/server.js --name whaticket-backend
