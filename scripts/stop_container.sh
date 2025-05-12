#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q | awk '{print $1}')

# Check if a container is found and stop it
if [ -n "$containerid" ]; then
  echo "Stopping container with ID: $containerid"
  docker rm -f $containerid
else
  echo "No running container found"
fi


