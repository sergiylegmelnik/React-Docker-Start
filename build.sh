#!/usr/bin/env bash

# confirm docker daemon is running and connected
docker version

# build the image based on the Dockerfile and name it `nvm`
docker build -t complete-intro-to-react ~/Repositories/complete-intro-to-react

# confirm image is present
docker images

# enter container terminal
# docker run -it complete-intro-to-react bash

docker run \
    --name complete-intro-to-react \
    -p 49160:8080 \
    -d complete-intro-to-react

# Print app output
docker logs $(docker ps --filter "name=complete-intro-to-react" --format "{{.ID}}")
