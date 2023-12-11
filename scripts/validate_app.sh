#!/bin/bash

# Update package lists
yum update -y

# Install curl if not already installed
if ! command -v curl &> /dev/null; then
    echo "curl could not be found. Installing now..."
    yum install curl -y
fi

# Install awk if not already installed
if ! command -v awk &> /dev/null; then
    echo "awk could not be found. Installing now..."
    yum install gawk -y
fi

# Check the status code of the service running on localhost:8080
status_code=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "http://localhost:8080")

# Check if curl command succeeded
if [[ $? -ne 0 ]]; then
    echo "curl command failed. Service might not be running."
    exit 1
fi

# Print a message based on the status code
if [ "$status_code" -eq 200 ]; then
    echo "Service is running. Status code: ${status_code}"
else
   echo "Service is not running or not responding with status code 200. Status code: ${status_code}"
   exit 1
fi
