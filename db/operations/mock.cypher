CREATE (p:Project:MovieSubtitles { name: 'Рэй' })
SET p.level = 3,
    p.description = 'Нейкае апісаньне праекта. Пра фільм, пра пераклад, пра каманду і г.д.',
    p.createdAt = datetime(),
    p.updatedAt = datetime()
CREATE (ps:ProjectSettings { statusId: 1, accessId: 2, abcId: 1, spellingId: 2 })
CREATE (p)-[:HAS_SETTINGS]->(ps)
CREATE (im:IMDB:Movie)
SET im.title = 'Ray',
    im.language = 'en',
    im.year = 2004,
    im.imdbRating = 7.8,
    im.imdbId = 'tt0350258',
    im.posterSrc = 'https://m.media-amazon.com/images/M/MV5BMTQxNDQwNjQzOV5BMl5BanBnXkFtZTcwNTQxNDYyMQ@@._V1_SX300.jpg'
CREATE (p)-[:HAS_INFO]->(im)
CREATE (r:Resource)
SET r.name = 'Ray.2004.1080p.BluRay.x264-FGT.HI',
    r.format = 'srt',
    r.status = 1,
    r.language = 'en'
CREATE (p)-[:TRANSLATING]->(r)
CREATE (ri1:ResourceItem)
SET ri1.text = 'Always remember your promise to me.',
    ri1.status = 3
CREATE (ri1c:ResourceItemContext:Subtitle)
CREATE (ri1ct:Timing)
SET ri1ct.startsAt = duration({ hours: 0, minutes: 1, seconds: 47, milliseconds: 66 }),
    ri1ct.endsAt = duration({ hours: 0, minutes: 1, seconds: 49, milliseconds: 193 })
CREATE (ri1r:Recommendation)
SET ri1r.language = 'ru',
    ri1r.text = '-Помни то, что ты пообещал мне:',
    ri1r.createdAt = datetime()
CREATE (ri1rt:Timing)
SET ri1rt.startsAt = duration({ hours: 0, minutes: 1, seconds: 47, milliseconds: 354 }),
    ri1rt.endsAt = duration({ hours: 0, minutes: 1, seconds: 50, milliseconds: 148 })
CREATE (ri1t1:Translation)
SET ri1t1.text = 'Заўсёды помні тое, што ты паабяцаў мне.',
    ri1t1.status = 2,
    ri1t1.type = 1
CREATE (ri1t2:Translation)
SET ri1t2.text = 'Заўсёды памятай пра сваё абяцанне мне.',
    ri1t2.status = 1,
    ri1t2.type = 2,
    ri1t2.service = 1
CREATE (ri1t3:Translation)
SET ri1t3.text = 'Заўсёды помні пра сваё абяцанне.',
    ri1t3.status = 1,
    ri1t3.type = 2,
    ri1t3.service = 2    
CREATE (ri1t1)-[:FOR]->(ri1)
CREATE (ri1t2)-[:FOR]->(ri1)
CREATE (ri1t3)-[:FOR]->(ri1)
CREATE (ri1r)-[:HAS_TIMING]->(ri1rt)
CREATE (ri1r)-[:FOR]->(ri1)
CREATE (ri1c)-[:HAS_TIMING]->(ri1ct)
CREATE (ri1)-[:HAS_CONTEXT]->(ri1c)
CREATE (ri2:ResourceItem)
SET ri2.text = 'Never let nobody or nothing<br/>turn you into no cripple.',
    ri2.status = 2
CREATE (ri2c:ResourceItemContext:Subtitle)
CREATE (ri2ct:Timing)
SET ri2ct.startsAt = duration({ hours: 0, minutes: 1, seconds: 49, milliseconds: 277 }),
    ri2ct.endsAt = duration({ hours: 0, minutes: 1, seconds: 52, milliseconds: 446 })
CREATE (ri2c)-[:HAS_TIMING]->(ri2ct)
CREATE (ri2)-[:HAS_CONTEXT]->(ri2c)
CREATE (ri3:ResourceItem)
SET ri3.text = 'DRIVER: All right!',
    ri3.status = 1
CREATE (ri3c:ResourceItemContext:Subtitle)
CREATE (ri3ct:Timing)
SET ri3ct.startsAt = duration({ hours: 0, minutes: 2, seconds: 14, milliseconds: 343 }),
    ri3ct.endsAt = duration({ hours: 0, minutes: 2, seconds: 15, milliseconds: 469 })
CREATE (ri3c)-[:HAS_TIMING]->(ri3ct)
CREATE (ri3)-[:HAS_CONTEXT]->(ri3c)
CREATE (ri1)-[:NEXT]->(ri2)
CREATE (ri2)-[:NEXT]->(ri3)
CREATE (r)-[:FIRST_ITEM]->(ri1)
CREATE (r)-[:LAST_ITEM]->(ri3)
;

CREATE (s:Project:MovieSubtitles { name: 'Крамянёвая даліна' })
SET s.level = 1,
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
CREATE (e1:Project:MovieSubtitles { name: 'Імклівае абясцэньванне' })
SET e1.level = 2,
    e1.description = 'Апісанне серыі.',
    e1.createdAt = datetime(),
    e1.updatedAt = datetime()
CREATE (ps1:ProjectSettings { statusId: 2, accessId: 3, abcId: 1, spellingId: 1 })
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
CREATE (e2:Project:MovieSubtitles { name: 'Назва іншай серыі' })
SET e2.level = 2,
    e2.createdAt = datetime(),
    e2.updatedAt = datetime()
CREATE (ps2:ProjectSettings {statusId: 2, accessId: 3, abcId: 1, spellingId: 1})
CREATE (e2)-[:HAS_SETTINGS]->(ps2)
CREATE (s)-[:IS_PARENT_OF]->(e2)
CREATE (ie2:IMDB:Episode)
SET ie2.title = 'My new episode',
    ie2.episodeNum = 2,
    ie2.seasonNum = 1
CREATE (e2)-[:HAS_INFO]->(ie2)
;

CREATE (p:Project:VideoStreamSubtitles { name: 'Зорныя войны' })
    SET p.level = 3,
    p.createdAt = datetime(),
    p.updatedAt = datetime()
CREATE (ps:ProjectSettings { statusId: 1, accessId: 2, abcId: 1, spellingId: 1 })
CREATE (p)-[:HAS_SETTINGS]->(ps)
CREATE (vi:VideoInfo)
SET vi.service = 1,
    vi.url = 'https://www.youtube.com/watch?v=8Qn_spdM5Zg',
    vi.language = 'en'
CREATE (p)-[:HAS_INFO]->(vi)
;
