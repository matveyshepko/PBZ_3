CREATE(danil:Person {name: 'danil', email: 'danil@mail.com'});

MATCH(p:Person)
  WHERE p.name = 'danil'
CREATE(p)-[:LIKE {rating: 10}]->(volvo:CAR {name: 'volvo', country: 'Sweden'});


MATCH(danil:Person)
  WHERE danil.name = 'danil'
CREATE(danil)-[:LIKE {rating: 9}]->(mercedes:CAR {name: 'mercedes', country: 'Germany'});


MATCH(danil:Person)
  WHERE danil.name = 'danil'
CREATE(danil)-[:LIKE {rating: -8}]->(toyota:CAR {name: 'toyota', country: 'Japan'});

MATCH(danil:Person)
  WHERE danil.name = 'danil'
CREATE(danil)-[:LIKE {rating: -8}]->(bmv:CAR {name: 'bmv', country: 'Germany'});

MATCH(danil:Person)
  WHERE danil.name = 'danil'
CREATE(danil)-[:LIKE {rating: 8}]->(audi:CAR {name: 'audi', country: 'Germany'});

MATCH (volvo:CAR)
  WHERE volvo.name = 'volvo'
CREATE(vlad:Person {name: 'vlad', email: 'vlad@mail.com'})-[:LIKE {rating: 9}]->(volvo);

MATCH(vlad:Person), (mercedes:CAR)
  WHERE vlad.name = 'vlad' AND mercedes.name = 'mercedes'
CREATE(vlad)-[:LIKE {rating: 8}]->(mercedes);

MATCH(vlad:Person)
  WHERE vlad.name = 'vlad'
CREATE(vlad)-[:LIKE {rating: 7}]->(lada:CAR {name: 'lada', country: 'Russia'});

MATCH(vlad:Person), (audi:CAR)
  WHERE vlad.name = 'vlad' AND audi.name = 'audi'
CREATE(vlad)-[:LIKE {rating: -6}]->(audi);

CREATE(lesha:Person {name: 'lesha', email: 'lesha@mail.com'});

MATCH(lesha:Person), (mercedes:CAR)
  WHERE lesha.name = 'lesha' AND mercedes.name = 'mercedes'
CREATE(lesha)-[:LIKE {rating: -5}]->(mercedes);

MATCH(lesha:Person), (volvo:CAR)
  WHERE lesha.name = 'lesha' AND volvo.name = 'volvo'
CREATE(lesha)-[:LIKE {rating: -3}]->(volvo);

CREATE(lesha)-[:LIKE {rating: 5}]->(mazda:CAR {name: 'mazda', country: 'Japan'});

MATCH(danil:Person), (vlad:Person)
  WHERE danil.name = 'danil' AND vlad.name = 'vlad'
CREATE(danil)-[:BE_FRIEND]->(vlad);

MATCH(danil:Person), (vlad:Person)
  WHERE danil.name = 'danil' AND vlad.name = 'vlad'
CREATE(danil)<-[:BE_FRIEND]-(vlad);

MATCH(lesha:Person), (vlad:Person)
  WHERE lesha.name = 'lesha' AND vlad.name = 'vlad'
CREATE(vlad)<-[:BE_FRIEND]-(lesha);

MATCH(lesha:Person), (vlad:Person)
  WHERE lesha.name = 'lesha' AND vlad.name = 'vlad'
CREATE(vlad)-[:BE_FRIEND]->(lesha);

MATCH(n)
DETACH
DELETE n;



