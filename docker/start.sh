#!/usr/bin/env bash
docker-compose -f compose-infrastructure.yml up -d

echo "delete unused images:"
docker rmi -f $(docker images --filter "dangling=true" -q)

while [[ $(docker ps -q -f "name=deploy") ]]
do
	    sleep 2
	    echo "starting up..."
done
