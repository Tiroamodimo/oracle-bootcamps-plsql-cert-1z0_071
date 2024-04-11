#!/bin/bash

# Define variables with defaults based on your provided command
container_name="oracle-user"
port=1521
password="oracle123"
volume_path="/opts/apps/dockerdata/oracle/"
image_name="gvenzl/oracle-free"

# Read user input for customization (optional)
read -rp "Enter container name (default: $container_name): " new_container_name
read -rp "Enter port number (default: $port): " new_port
read -rp "Enter password for oracle user (default: $password): " new_password
read -rp "Enter path to local persistent volume (default: $volume_path): " new_volume_path
read -rp "Enter image name and tag (default: $image_name): " new_image_name

# Update variables with user input if provided
container_name=${new_container_name:-$container_name}
port=${new_port:-$port}
password=${new_password:-$password}
volume_path=${new_volume_path:-$volume_path}
image_name=${new_image_name:-$image_name}

# Construct the docker run command with the configured variables
docker run -d \
  --name $container_name \
  -p $port:1521 \
  -e ORACLE_PASSWORD=$password \
  -v oracle-volume:$volume_path \
  $image_name

echo "Docker container '$container_name' is starting..."

