#!/bin/sh

[ -n "$REDIS_PASS" ] && export REDISCLI_AUTH=$REDIS_PASS

redis-cli -h ${REDIS_HOST:-127.0.0.1} -p ${REDIS_PORT:-6379} --raw EVAL "$(cat /scripts/$1.lua)" 0 $2
