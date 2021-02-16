FROM neo4j:4.0

ENV NEO4J_AUTH=neo4j/admin \
    APOC_VERSION=4.0.0.18

ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar
RUN sh -c 'apt-get update -y && apt-get install -y curl'
RUN sh -c 'cd /var/lib/neo4j/plugins && curl -L -O "${APOC_URI}"'

EXPOSE 7474 7687

CMD ["neo4j"]
