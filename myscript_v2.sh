#!/bin/bash
for file in ./Dockerfile.*
do
docker build -t mynginx_$(date +%Y%m%d%H%M%S):1.0.1 -f $file .
docker run -d -P mynginx_$(date +%Y%m%d%H%M%S):1.0.1
done