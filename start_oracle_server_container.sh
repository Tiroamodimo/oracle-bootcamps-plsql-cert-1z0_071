#!/bin/bash

# Define variables with defaults based on your provided command
container_name="oracle_bootcamp_db"
port=1521
password="oracle123"
volume_path="/opt/oracle/oradata"
image_name="gvenzl/oracle-free:latest"

# Construct the docker run command with the configured variables
docker run -d \
  --name $container_name \
  -p $port:1521 \
  -e ORACLE_PASSWORD=$password \
  -v oracle-volume:$volume_path \
  $image_name

echo "Docker container '$container_name' is starting..."

sleep 5

docker exec $container_name resetPassword password123

echo "Oracle sys user password reset"

