#!/bin/bash
until cypher-shell -u neo4j -p password "$(cat cypher/create_node.cql)"
do
  echo "create nodes failed, sleeping"
  sleep 2
done

until cypher-shell -u neo4j -p password "$(cat cypher/make_relation.cql)"
do
  echo "create links failed, sleeping"
  sleep 2
done