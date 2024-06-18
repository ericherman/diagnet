#!/bin/bash

DIR=$(dirname $0)
LOG_DIR=$(grep 'LOG_DIR=\(.*\)$' ${DIR}/log-rotate-ip-mon | cut -f2 -d'=' )

nohup $DIR/log-rotate-ip-mon &
disown %
tail -n1000 ${LOG_DIR}/current
echo "tail -f ${LOG_DIR}/current"
