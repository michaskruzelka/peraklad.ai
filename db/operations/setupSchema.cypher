CALL apoc.schema.assert(
    null,
    {
        Project: ['id'],
        Resource: ['id'],
        ResourceItem: ['id'],
        Translation: ['id']
    },
    false
);
