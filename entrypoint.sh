#!/bin/sh

# Fix permissions at runtime AFTER volume is mounted
mkdir -p /home/node/.n8n
chown -R node:node /home/node/.n8n
chmod -R 755 /home/node/.n8n

# Switch to node user and start n8n
exec su-exec node tini -- /docker-entrypoint.sh
