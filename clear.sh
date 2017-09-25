#!/usr/bin/env bash

# confirm docker daemon is running and connected
docker version

# confirm image is present
docker images -a

# clear all docker images
docker stop $(docker ps -q)
docker rm -f $(docker ps -a -q)
docker rmi -f $(docker images -q)

# confirm image is present
docker images -a
