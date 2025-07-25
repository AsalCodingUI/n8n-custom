FROM n8nio/n8n:latest

USER root

# Install git & bash (dibutuhkan untuk install dari GitHub/npm)
RUN apk add --no-cache git bash \
 && npm install -g n8n-nodes-tesseractjs

USER node
