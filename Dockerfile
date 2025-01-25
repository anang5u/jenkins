FROM node:20.18-alpine3.21

# Install Docker dan dependencies lainnya
RUN apk update && \
    apk add --no-cache \
    git \
    curl \
    docker \
    bash

# Jalankan Docker daemon di background
RUN dockerd &

WORKDIR /workspace
