#!/bin/bash
docker build -t mynginx_$(date +%Y%m%d%H%M%S):1.0.1 -f Dockerfile.web1
docker build -t mynginx_$(date +%Y%m%d%H%M%S):1.0.1 -f Dockerfile.web2