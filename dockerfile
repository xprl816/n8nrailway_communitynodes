FROM n8nio/n8n

# Create community node folder
RUN mkdir -p /usr/local/lib/node_modules/n8n/packages/community-nodes

# Optional: Example of how you could preinstall a custom node (e.g. Ultimate Assistant)
# COPY packages /usr/local/lib/node_modules/n8n/packages

# Install everything just in case
RUN cd /usr/local/lib/node_modules/n8n && npm install

WORKDIR /usr/local/lib/node_modules/n8n
