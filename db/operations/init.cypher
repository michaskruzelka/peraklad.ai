CALL apoc.schema.assert({ Resource: ['status'], ResourceItem: ['status'], Project: ['createdAt'], ProjectSettings: ['access'] }, { Project: ['id'], Resource: ['id'], ResourceItem: ['id'], Translation: ['id'], Comment: ['id'], User: ['username', 'email', 'phone'], Team: ['id'], ProjectInvitation: ['id'], TeamInvitation: ['id'] }, false);
MERGE (:Bot { id: 'peraklad-ai' });
