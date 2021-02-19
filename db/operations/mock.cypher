CREATE (p:Project:Subtitles:Offline { name: 'Рэй' })
SET p.type = 3,
    p.description = 'Нейкае апісаньне праекта. Пра фільм, пра пераклад, пра каманду і г.д.',
    p.createdAt = datetime(),
    p.updatedAt = datetime()
CREATE (ps:ProjectSettings { status: 1, access: 2, abc: 1, spelling: 2 })
CREATE (p)-[:HAS_SETTINGS]->(ps)
CREATE (im:IMDB:Movie)
SET im.title = 'Ray',
    im.language = 'en',
    im.year = 2004,
    im.imdbRating = 7.8,
    im.imdbId = 'tt0350258',
    im.posterSrc = 'https://m.media-amazon.com/images/M/MV5BMTQxNDQwNjQzOV5BMl5BanBnXkFtZTcwNTQxNDYyMQ@@._V1_SX300.jpg'
CREATE (p)-[:HAS_INFO]->(im)
;

CREATE (s:Project:Subtitles:Offline { name: 'Крамянёвая даліна' })
SET s.type = 1,
    s.description = 'Нейкае апісанне праекта. Пра серыял, пра пераклад, пра каманду і г.д.',
    s.createdAt = datetime(),
    s.updatedAt = datetime()
CREATE (is0:IMDB:Series)
SET is0.title = 'Silicon Valley',
    is0.language = 'en',
    is0.imdbRating = 8.5,
    is0.imdbId = 'tt2575988',
    is0.posterSrc = 'https://m.media-amazon.com/images/M/MV5BOTcwNzU2MGEtMzUzNC00MzMwLWJhZGItNDY3NDllYjU5YzAyXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SX300.jpg'
CREATE (s)-[:HAS_INFO]->(is0)
CREATE (e1:Project:Subtitles:Offline { name: 'Імклівае абясцэньванне' })
SET e1.type = 2,
    e1.description = 'Апісанне серыі.',
    e1.createdAt = datetime(),
    e1.updatedAt = datetime()
CREATE (ps1:ProjectSettings { status: 2, access: 3, abc: 1, spelling: 1 })
CREATE (e1)-[:HAS_SETTINGS]->(ps1)
CREATE (s)-[:IS_PARENT_OF]->(e1)
CREATE (ie1:IMDB:Episode)
SET ie1.title = 'Minimum Viable Product',
    ie1.episodeNum = 1,
    ie1.seasonNum = 1,
    ie1.imdbId = 'tt3222784',
    ie1.year = 2014,
    ie1.imdbRating = 7.8,
    ie1.posterSrc = 'https://m.media-amazon.com/images/M/MV5BYWIyODUxOTItOTYwNS00Mjc4LWI4ZjUtNWQ2YWVmNWQ1MmViXkEyXkFqcGdeQXVyMjg2MTMyNTM@._V1_SX300.jpg'
CREATE (e1)-[:HAS_INFO]->(ie1)
CREATE (e2:Project:Subtitles:Offline { name: 'Назва іншай серыі' })
SET e2.type = 2,
    e2.createdAt = datetime(),
    e2.updatedAt = datetime()
CREATE (ps2:ProjectSettings {status: 2, access: 3, abc: 1, spelling: 1})
CREATE (e2)-[:HAS_SETTINGS]->(ps2)
CREATE (s)-[:IS_PARENT_OF]->(e2)
CREATE (ie2:IMDB:Episode)
SET ie2.title = 'My new episode',
    ie2.episodeNum = 2,
    ie2.seasonNum = 1
CREATE (e2)-[:HAS_INFO]->(ie2)
;
