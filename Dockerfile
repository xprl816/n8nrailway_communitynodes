# Start from the official n8n image
FROM n8nio/n8n

# Set the working directory
WORKDIR /home/node/.n8n

# Install desired community nodes locally (you can add more as needed)
RUN npm install \
    n8n-nodes-stable-diffusion \
    n8n-nodes-openai \
    n8n-nodes-chatgpt \
    n8n-nodes-gsheet

# Ensure proper permissions (Railway runs as non-root)
RUN chown -R node:node /home/node/.n8n

# Switch to the non-root "node" user (as required by base image)
USER node

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
