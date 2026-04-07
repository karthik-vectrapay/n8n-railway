FROM n8nio/n8n:latest

USER root

# Create directory and set permissions for railway
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node && \
    chmod -R 755 /home/node

USER node

WORKDIR /home/node

EXPOSE 5678

CMD ["n8n", "start"]
