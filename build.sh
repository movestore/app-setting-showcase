#!/bin/sh

docker build -t registry.gitlab.com/couchbits/movestore/movestore-groundcontrol/movestore-apps/ms-settings-examples .
docker push registry.gitlab.com/couchbits/movestore/movestore-groundcontrol/movestore-apps/ms-settings-examples
