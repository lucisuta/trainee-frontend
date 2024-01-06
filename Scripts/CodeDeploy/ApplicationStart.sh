#!/bin/bash -xe
cd /home/ubuntu/trainee
./App serve --env production --hostname "0.0.0.0" --port 8080 >trainee.log 2>&1 &
