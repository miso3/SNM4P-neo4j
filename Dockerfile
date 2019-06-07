FROM neo4j:3.4

ENV NEO4J_AUTH=neo4j/password
ENV NEO4J_dbms_security_procedures_unrestricted="algo.*"

RUN apk add --no-cache --quiet procps wget

COPY create_nodes.sh create_nodes.sh
COPY wrapper.sh wrapper.sh
COPY cypher cypher

RUN mkdir /plugins \
    && cd /plugins \
    && wget https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/3.4.12.7/graph-algorithms-algo-3.4.12.7.jar

ENTRYPOINT ["./wrapper.sh"]