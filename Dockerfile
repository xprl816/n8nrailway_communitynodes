FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Copy community nodes into the container
COPY community-nodes /usr/local/lib/community-nodes

# Install the community nodes
RUN cd /usr/local/lib/community-nodes && npm install --legacy-peer-deps

# Switch back to node user
USER node
