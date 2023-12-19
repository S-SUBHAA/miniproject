#!/bin/bash
docker stop mycontainer
docker rm mycontainer
docker-compose up -d
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
