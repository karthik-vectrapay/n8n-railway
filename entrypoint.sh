#!/bin/sh

# Fix permissions at runtime AFTER volume is mounted
mkdir -p /home/node/.n8n
chmod -R 777 /home/node/.n8n

# Run as current user
exec tini -- /docker-entrypoint.sh
