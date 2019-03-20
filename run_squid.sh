#!/bin/bash

#IP="152.84.71.217"

docker run -d \
	-it \
	--name cc7_squid \
    --hostname cc7_squid \
	--net host \
    --publish 3128:3128 \
    --privileged \
	--mount type=bind,source="$(pwd)"/config,target=/config \
	cc7_squid \
	/sbin/init

docker exec -it cc7_squid /config/init.sh
docker exec -it cc7_squid bash 

#docker stop cc7_squid && docker rm cc7_squid