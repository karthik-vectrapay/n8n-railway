FROM n8nio/n8n:latest

USER root

RUN npm install -g n8n && \
    mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node && \
    chmod -R 777 /home/node/.n8n

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
