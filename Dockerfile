FROM n8nio/n8n:latest

USER root

# Create directory for community nodes
RUN mkdir -p /data/community-nodes

# Copy custom nodes into container
COPY community-nodes /data/community-nodes

# Install dependencies for each custom node
RUN for dir in /data/community-nodes/*/ ; do \
    cd "$dir" && npm install --legacy-peer-deps ; \
done

USER node
