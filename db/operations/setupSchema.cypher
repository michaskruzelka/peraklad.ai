CALL apoc.schema.assert(
    {
        ResourceItem: ['status']
    },
    {
        Project: ['id'],
        Resource: ['id'],
        ResourceItem: ['id'],
        Translation: ['id']
    },
    false
);
