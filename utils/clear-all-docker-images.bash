#!/bin/bash

# sudo docker stop $(sudo docker ps -a -q) && \
sudo docker rm $(sudo docker ps -aq) && \
sudo docker rmi -f $(sudo docker images -a) && \
sudo docker builder prune && \
sudo docker system prune --volumes