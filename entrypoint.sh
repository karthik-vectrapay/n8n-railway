#!/bin/sh

# Fix permissions at runtime AFTER volume is mounted
mkdir -p /home/node/.n8n
chown -R node:node /home/node/.n8n
chmod -R 755 /home/node/.n8n

# Run original entrypoint as node user
exec gosu node tini -- /docker-entrypoint.sh
