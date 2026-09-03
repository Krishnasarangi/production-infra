#!/bin/bash

echo "===== Service Health Check ====="

services=("nginx" "ssh")

for service in "${services[@]}"
do
    if systemctl is-active --quiet "$service"
    then
        echo "$service : RUNNING"
    else
        echo "$service : NOT RUNNING"
    fi
done
