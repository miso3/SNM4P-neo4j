#!/bin/bash
set -m
/docker-entrypoint.sh neo4j &
./create_nodes.sh
fg %1