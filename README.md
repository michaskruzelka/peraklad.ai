# Перакладай - peraklad.ai (_in development_)

**Based on GRANDstack**:

**GraphQl** + **React** + **Apollo** + **Neo4j Database**

Collaborative Belarusian-language translations service

Калектыўны пераклад субтытраў і інтэрфейсаў для гульняў, сайтаў, дадаткаў, ПЗ.

## Local set up

-   clone recursively <br/>
    <span style="color:red;"><sup>(All of submodules are private. Please contact the repository owner before cloning).</sup></span>
-   create an .env file and fill it with variables from .env.sample.
-   run containers:

```bash
docker-compose up
```

-   start API

```bash
docker-compose exec api yarn start
```

-   start UI (for those who are responsible for deployment)

```bash
docker-compose exec web netlify dev
```

-   start UI (for everyone else)

```bash
docker-compose exec web yarn start
```

## Local addresses

-   Application (WEB) - http://localhost:8889 (if netlify proxy) or http://localhost:3001 (if yarn start)
-   GraphQL Playground (API) - http://localhost:4001/
-   Neo4j Browser (DB) - http://localhost:7474/
