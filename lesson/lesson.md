### SQL DATABASES

relational databases. A sql database usually consists of one or more tables. The tables contain columns, which specify attributes, i.e. name, color, id. and rows of content.

to initialize a database: sqlite3 *name of database.db
  * this will create a datbase with whatever you name it

  * CREATE TABLE dwarfs(id INTEGER PRIMARY KEY, name TEXT, color TEXT);

comparisons to RESTful:

to create something:

RESTful: POST "/dwarf"
SQL: INSERT INTO dwarfs (name,color) VALUES ("Happy","Yellow"), ("Dopey","purple"), ... continue until done. Finish with ; !!

to retrieve something:

RESTful: GET "/dwarfs"
SQL: SELECT *FROM dwarfs; (*this will show you all the columns and rows)

RESTful: GET "/dwarfs/:names"
SQL: SELECT name FROM dwarfs; (*this will show you all the names in the names column)

RESTful: GET "/dwarf/:id"
SQL: SELECT *FROM dwarfs WHERE id=3;

to update something:

RESTful: PUT "/dwarf/:id"
SQL: UPDATE dwarfs SET name= "Sniffy", color= "green" WHERE id=3;

to delete something:

RESTful: DELETE "/dwarfs/:id"
SQL: DELETE FROM dwarfs WHERE id= 4;
