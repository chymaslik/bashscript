#!/bin/bash
web1=mynginx_$(date +%Y%m%d%H%M%S):1.0.1
docker build -t $web1 -f Dockerfile.web1 .
docker run -d -p 1111:80 $web1 
web2=mynginx_$(date +%Y%m%d%H%M%S):2.0.2
docker build -t $web2 -f Dockerfile.web2 .
docker run -d -p 2222:80 $web2