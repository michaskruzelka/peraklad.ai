MATCH path1 = (i:IMDB:Movie {title: 'Ray'})<-[:HAS_INFO]-(p:Project:Subtitles:Offline)-[:HAS_SETTINGS]->(:ProjectSettings)
WITH path1, p
MATCH path2 = (p)-[:TRANSLATING]->(:Resource)-[:FIRST_ITEM]->(ri1:ResourceItem)-[:NEXT*]->(ResourceItem)<-[:LAST_ITEM]-(:Resource)
WITH path1, path2, ri1
MATCH path3 = (ri1)<-[:FOR]-(:Translation),
path4 = (ri1)<-[:FOR]-(:Recommendation)-[:HAS_TIMING]->(:Timing),
path5 = (ri1)-[:HAS_CONTEXT]->(:ResourceItemContext)-[:HAS_TIMING]->(:Timing)
RETURN *
;
