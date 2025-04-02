FROM docker.n8n.io/n8nio/n8n:latest

# Установка FFmpeg/ffprobe
USER root
RUN apk update && \
    apk add --no-cache ffmpeg && \
    rm -rf /var/cache/apk/*

USER node
