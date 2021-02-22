# Operations with Neo4j DB

- Indexes, unique property constraints and UUID procedures are created via apoc.conf (see setupSchema and setupProcedures).
- Property existence constraints are created manually (EE only):
```bash
cat db/operations/clear.cypher | docker-compose exec -T db cypher-shell
```
- To clear all the data:
```bash
cat db/operations/clear.cypher | docker-compose exec -T db cypher-shell
```
- To import sample data
```bash
cat db/operations/mock.cypher | docker-compose exec -T db cypher-shell
```
