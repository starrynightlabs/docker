FROM python:3.10-bullseye
LABEL org.opencontainers.image.source https://github.com/starrynightlabs/docker

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        unzip awscli jq ffmpeg \
    && rm -rf /var/lib/apt/lists/*

RUN ffmpeg -version

# Install docker for deployment
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && rm -fv get-docker.sh
