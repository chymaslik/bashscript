#!/bin/bash
x=0
port=1111
for file in ./Dockerfile.*
do
t=$(date +%Y%m%d%H%M%S)
docker build -t mynginx_$t:1.0.$x -f $file .
docker run -d -p $port:80 mynginx_$t:1.0.$x
((x++))
((port=port+1111))
sleep 1
done