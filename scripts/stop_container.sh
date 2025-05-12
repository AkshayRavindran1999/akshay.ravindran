#!/bin/bash
set -e

# Stop the running container (if any)
e4c053ee5faa='docker ps | awk -F " " '{print $1}'
docker rm -f $e4c053ee5faa
