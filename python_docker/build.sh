#!/bin/bash

name_tag="python_docker:3.9"

docker buildx build --platform linux/amd64 -t starrynightlabs/$name_tag .

# CR_USER: github user id
# CR_PAT: https://docs.github.com/en/free-pro-team@latest/packages/managing-container-images-with-github-container-registry/pushing-and-pulling-docker-images#authenticating-to-github-container-registry
if [[ $CR_USER ]] && [[ $CR_PAT ]]
then
  docker tag starrynightlabs/$name_tag ghcr.io/starrynightlabs/docker/$name_tag
  echo $CR_PAT | docker login ghcr.io -u $CR_USER --password-stdin
  docker push ghcr.io/starrynightlabs/docker/$name_tag
else
  echo "CR_USER, CR_PAT environment variables required!"
fi

