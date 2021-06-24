#!/bin/bash
x=0
for file in ./Dockerfile.*
do
t=$(date +%Y%m%d%H%M%S)
docker build -t mynginx_$t:1.0.$x -f $file .
docker run -d -P mynginx_$t:1.0.$x
((x++))
sleep 1
done