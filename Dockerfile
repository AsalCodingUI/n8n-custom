FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Install git, tesseract, dan tools lain (jaga-jaga)
RUN apt-get update && \
    apt-get install -y git tesseract-ocr && \
    npm install -g n8n n8n-nodes-tesseractjs

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
