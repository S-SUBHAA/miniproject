#deploy the file
#!/bin/bash
docker-compose up -d
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
