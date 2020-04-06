#!/bin/bash
#run with sudo

docker-compose down
docker rm frontend_installer_mongo_1
docker image rm beademingstoestel/mongo
docker-compose pull & docker-compose up
