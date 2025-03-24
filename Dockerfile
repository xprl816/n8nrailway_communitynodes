FROM n8nio/n8n:latest

USER root

# Install community nodes
COPY package.json /usr/local/lib/package.json
RUN cd /usr/local/lib && npm install --legacy-peer-deps

USER node
