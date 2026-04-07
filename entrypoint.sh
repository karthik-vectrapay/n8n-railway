#!/bin/sh
mkdir -p /home/node/.n8n
chown -R node:node /home/node/.n8n
chmod -R 755 /home/node/.n8n
exec gosu node tini -- /docker-entrypoint.sh
