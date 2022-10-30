#!/bin/bash
# Author: Nadine
# Date: 10/30/2022

# Desciption: Docker Installation

echo "begenning docker installation"

sudo yum remove docker \
docker-client \
docker-client-latest \
docker-common \
docker-latest \
docker-latest-logrotate \
docker-logrotate \
docker-engine

sudo yum install -y yum-utils
 sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
 sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
 yum list docker-ce --showduplicates | sort -r

sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io docker-compose-plugin     

sudo systemctl start docker

sudo docker run hello-world

echo "docker installation complete"