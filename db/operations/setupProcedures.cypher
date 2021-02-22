CALL apoc.uuid.install('Project', { addToExistingNodes: false, uuidProperty: "id" });
CALL apoc.uuid.install('Resource', { addToExistingNodes: false, uuidProperty: "id" });
CALL apoc.uuid.install('ResourceItem', { addToExistingNodes: false, uuidProperty: "id" });
CALL apoc.uuid.install('Translation', { addToExistingNodes: false, uuidProperty: "id" });
