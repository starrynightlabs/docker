FROM python:3.9-bullseye

RUN apt-get update && apt-get install -y unzip awscli && rm -rf /var/lib/apt/lists/*

# Install docker for deployment
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && rm -fv get-docker.sh

