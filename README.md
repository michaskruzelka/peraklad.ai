# Перакладай - peraklad.ai (_in development_)

**Based on GRANDstack**:

**GraphQl** + **React** + **Apollo** + **Neo4j Database**

Collaborative Belarusian-language translations service

Калектыўны пераклад субтытраў і інтэрфейсаў для гульняў, сайтаў, дадаткаў, ПЗ.

## Local set up
-   clone recursively <br/>
    <span style="color:red;"><sup>(Some of submodules are private. Please contact the repository owner before cloning).</sup></span>
-   create an .env file and fill it with variables from .env.sample.
-   run containers:
```bash
docker-compose up
```
- start API
```bash
docker-compose exec app yarn start-api
```
-   start UI
```bash
docker-compose exec app netlify dev
```

## Local addresses
-   Application - http://localhost:8889
-   Neo4j Browser - http://localhost:7474/
-   GraphQL Playground - http://localhost:8889/api
