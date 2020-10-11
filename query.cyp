// 1
MATCH (p:Person)
  WHERE p.name = 'danil'
RETURN p;

// 2
MATCH (person)-[:LIKE]->(car)
  WHERE person.name = 'vlad'
RETURN car;

// 3
MATCH (person)-[l:LIKE]->(car)
  WHERE car.name = 'volvo' AND l.rating > 0
RETURN person.name;

// 4
MATCH (person2)-[:BE_FRIEND]->(person)-[l:LIKE]->(mercedes:CAR)
  WHERE mercedes.name = 'mercedes' AND l.rating > 8
RETURN person2.name;

// 5
MATCH (person2)-[:BE_FRIEND]->(person)-[l:LIKE]->(product:CAR)
  WHERE person2.name = 'danil' AND l.rating > 6
  AND NOT (person2)-[:LIKE]->(car:CAR)
RETURN car;


// 6
MATCH (danil:Person)-[:BE_FRIEND]->(friend:Person)
RETURN friend;

// 7
MATCH ()-[l:LIKE]->(car:CAR)
  WHERE l.rating = 8
RETURN car;

// 8
MATCH (person)-[l:LIKE]->(car)
  WHERE person.name = 'vlad' AND l.rating > 0
RETURN car;

// 9
MATCH (person)-[l:LIKE]->(car)
  WHERE car.name = 'volvo' AND l.rating > 0
RETURN person;

// 10
MATCH ()-[l:LIKE]->(car:CAR)
  WHERE l.rating < 0
RETURN car.name, l.rating;