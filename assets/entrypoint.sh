#!/bin/bash

set -e

SENSU_NAME=${SENSU_NAME:-sensu}
SENSU_HOST=${SENSU_HOST:-local}
SENSU_PORT=${SENSU_PORT:-4567}
SENSU_TIMEOUT=${SENSU_TIMEOUT:-5}


cp /app/assets/uchiwa.json /etc/sensu/uchiwa.json
sed s/{{SENSU_NAME}}/$SENSU_NAME/g -i /etc/sensu/uchiwa.json
sed s/{{SENSU_HOST}}/$SENSU_HOST/g -i /etc/sensu/uchiwa.json
sed s/{{SENSU_PORT}}/$SENSU_PORT/g -i /etc/sensu/uchiwa.json
sed s/{{SENSU_TIMEOUT}}/$SENSU_TIMEOUT/g -i /etc/sensu/uchiwa.json

update-rc.d uchiwa defaults
/etc/init.d/uchiwa start


bash
