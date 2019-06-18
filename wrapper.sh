#!/bin/bash
set -m
/docker-entrypoint.sh neo4j &

CHECKER="check"
if [ ! -e $CHECKER ]; then
    touch $CHECKER
    ./create_nodes.sh
fi

fg %1