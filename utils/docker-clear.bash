#!/bin/bash

# docker stop $(sudo docker ps -a -q) && \
# docker rm $(sudo docker ps -aq) && \
# docker rmi -f $(sudo docker images -a) && \
# docker builder prune && \
# docker system prune && \
# docker system prune --volumes

# Remove all images
docker rmi $(docker images -q)