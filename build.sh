#!/bin/bash

sudo podman build --tls-verify=false -t quay.io/robinwu456/bliss_nginx .
[ $? != "0" ] && exit 1

#sudo podman stop bliss_nginx
#sudo podman run --rm --name bliss_nginx -h bliss_nginx -d -p 8080:8080 quay.io/robinwu456/bliss_nginx
#sudo podman run --rm --name bliss_nginx -h bliss_nginx -p 8080:80 -d quay.io/robinwu456/bliss_nginx

sudo podman push --tls-verify=false quay.io/robinwu456/bliss_nginx
