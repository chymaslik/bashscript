#!/bin/bash
x=0
for file in ./Dockerfile.*
do
docker build -t mynginx_$(date +%Y%m%d%H%M%S):1.0.$x -f $file .
docker run -d -P mynginx_$(date +%Y%m%d%H%M%S):1.0.$x
x=x+1
sleep 5
done