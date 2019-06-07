LOAD CSV WITH HEADERS FROM "file:///CSV/node.csv" AS row
CREATE (n:Node)
SET n = row,
	n.lat = toFloat(row.lat),
	n.lon = toFloat(row.lon),
	n.floor = toFloat(row.floor)