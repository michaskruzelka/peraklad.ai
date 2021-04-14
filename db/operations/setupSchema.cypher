CALL apoc.schema.assert(
    {
        ResourceItem: ['status']
    },
    {
        Project: ['id'],
        Resource: ['id'],
        ResourceItem: ['id'],
        Translation: ['id'],
        User: ['username', 'email', 'phone'],
        ProjectInvitation: ['id'],
        TeamInvitation: ['id']
    },
    false
);
