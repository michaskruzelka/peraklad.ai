# Operations with Neo4j DB

-   Locally: indexes, unique property constraints and UUID procedures are created via apoc.conf.
-   On prod: indexes, unique property constraints and UUID procedures are created manually (see init.cypher).
-   Property existence constraints are created manually (EE only):

```bash
cat db/operations/enterprise.cypher | docker-compose exec -T db cypher-shell
```

-   To clear all the data:

```bash
cat db/operations/clear.cypher | docker-compose exec -T db cypher-shell
```
