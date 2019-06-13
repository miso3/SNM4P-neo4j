LOAD CSV WITH HEADERS FROM 'file:///CSV/link.csv' AS row
MATCH (start:Node{node_id:row.start_id}),
	(end:Node{node_id:row.end_id})
MERGE (start)-[l1:Link]->(end)
MERGE (start)<-[l2:Link]-(end)
SET l1 = row, l2 = row,
	l1.distance = toFloat(row.distance),
	l2.distance = toFloat(row.distance);
