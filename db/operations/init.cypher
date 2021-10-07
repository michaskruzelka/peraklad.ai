CALL apoc.schema.assert({ ResourceItem: ['status'], Project: ['createdAt'] }, { Project: ['id'], Resource: ['id'], ResourceItem: ['id'], Translation: ['id'], Comment: ['id'], User: ['username', 'email', 'phone'], Team: ['id'], ProjectInvitation: ['id'], TeamInvitation: ['id'] }, false);
MERGE (:Bot { id: 'peraklad-ai' });
