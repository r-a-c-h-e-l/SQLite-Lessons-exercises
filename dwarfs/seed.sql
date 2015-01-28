CREATE TABLE tinyPeople(
  id INTEGER PRIMARY KEY,
  name TEXT, color TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

  CREATE TRIGGER dwarfs BEFORE UPDATE ON tinyPeople BEGIN
    UPDATE dwarfs SET updated_at= CURRENT_TIMESTAMP WHERE id= new.id;
  END;

  INSERT INTO tinyPeople (name,color) VALUES ('Happy','Yellow'),
  ('Dopey','purple'),
  ('Sneezy','green'),
  ('Grumpy','brown'),
  ('Doc','brown'),
  ('Sleepy','blue'),
  ('Bashful','blue');
