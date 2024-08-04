#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: kubectl resource-usage <namespace> <resource-type>"
    exit 1
fi

# Define command-line arguments
PLUGIN_NAME=$1
NAMESPACE=$2
RESOURCE_TYPE=$3

# Retrieve resource usage statistics from Kubernetes
kubectl get $RESOURCE_TYPE -n $NAMESPACE | tail -n +2 | while read -r line
do
  # Extract CPU and memory usage from the output
  NAME=$(echo $line | awk '{print $1}')
  CPU=$(echo $line | awk '{print $2}')
  MEMORY=$(echo $line | awk '{print $3}')

  # Output the statistics to the console
  echo "Resource: $RESOURCE_TYPE, Namespace: $NAMESPACE, Name: $NAME, CPU: $CPU, Memory: $MEMORY"
done
