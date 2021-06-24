#!/bin/bash
x=0
port=1111
for file in ./Dockerfile.*
do
    if grep $port lsof
    then
    ((port=port+1111))
    fi
t=$(date +%Y%m%d%H%M%S)
docker build -t mynginx_$t:$x.0.$x -f $file .
docker run -d -p $port:80 mynginx_$t:$x.0.$x
((x++))
((port=port+1111))
sleep 1
done