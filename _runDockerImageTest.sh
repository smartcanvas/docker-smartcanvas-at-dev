#!/bin/bash

docker run --rm -ti -e WHOAMI=$(whoami) --name=instance-smartcanvas-at-dev -v /c/Users/Vinicius/Docker/CIT/Bitbucket/smartcanvas:/smartcanvas/src -e USER=$USER smartcanvas-at-dev:latest