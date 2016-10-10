#!/bin/bash
docker run --name=unifi -it -d \
    -p 8080:8080 \
    -p 8443:8443 \
    -p 8880:8880 \
    -p 8843:8843 \
    -v /unifi:/var/lib/unifi \
ventz/unifi
