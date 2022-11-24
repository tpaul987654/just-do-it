-- What is a relational database management system (RDBMS)? What are the advantages of a database management system over a file system?

-- RDMS stands for Relational Database Management systems.It stores the data into the colllection of tables,which is related by common fields between the columns of the table.It also provides relational operators to manipulate the data stored into the tables.

-- Advantages of DBMS over File system: 
-- Data redundancy and inconsistency,Data sharing, Data concurrency, Data searching, Data integrity, System crashing, Data security, Backup, Interface, Easy Maintenance


-- Question- Explain the concept of normalization

-- Answer- Normalization is the process of minimizing redundancy and dependency by organizing fields and tables of a database.The main aim of normalization is to add,delete or modify field that can be made in a single table.
-- Normalizaton can be divided into 4 forms-First normal form(1NF),Second Normal form(2NF),Third Normal form(3NF),Forth Normal form(4NF).

-- Question- Explain the many types of query languages used in relational databases. DQL, DML, DCL, and DDL are some examples

-- Answer- DQL- Data Query Language.it is a component of a SQL statement that allows getting data from the database and imposing order upon it. It includes the SELECT statement.
--         DQL command- SELECT-It is used to retrieve data from the database.

--         DDL- Data Definition Language.it is a component of a SQL statement that can be used to define the database schema and used to create,modify and delete database structures but not data.alter
--         DDLcommands- CREATE,ALTER,DROP,TRUNCATE,COMMENT,RENAME. 

--         DML- Data Manipulation Language.It is a component of a SQL statement that controls access to data and to the database. Basically, DCL statements are grouped with DML statements.    
-- 		   DML commands- INSERT,UPDATE,DELETE,LOCK.

--         DCL- Data Query Language.It is a component of a SQL statement which mainly deal with the rights,permissions and other controls of the database system.
--         DCL commands- GRANT,REVOKE.

--         TCL- Transaction control language. It is a component of a SQL statement used to manage transactions in database
--         TCL commands- COMMIT,ROLLBACK,SAVEPOINT.


--         Question-What is the difference between the main key and a composite key? Give instances of how primary key and composite are used.

--         Answer- Main key is that column of the table whose every row data is uniquely identified. Every row in the table must have a main key and no two rows can have the same main key. Main key value can never be null nor can be modified or updated.

-- Example of main key-

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);      


-- Composite Key is a form of the candidate key where a set of columns will uniquely identify every row in the table.

CREATE TABLE student
(rollNumber INT, 
name VARCHAR(30), 
class VARCHAR(30), 
section VARCHAR(1), 
mobile VARCHAR(10),
PRIMARY KEY (rollNumber, mobile));    

-- In a database management system, explain the ACID properties 

-- A transaction is a single logical unit of work that accesses and possibly modifies the contents of a database. Transactions access data using read and write operations. 
-- In order to maintain consistency in a database, before and after the transaction, certain properties are followed. These are called ACID properties.      

-- ACID Properties in DBMS

-- A= ATOMICITY-  The entire transaction takes place at once or doesn't happen at all.
-- C= CONSISTENCY- The database must be consistent before and after the transaction.
-- I= ISOLATION-   Multiple Transactions occur independently without interference.
-- D= DURABILITY-  The changes of a successful transaction occurs even if the system failure occurs.

-- Create a table with a primary key, a column default value, and a column unique constraint in SQL

create database Candidates_sql

use	candidates_sql

create table candidates_sql
(candidate_id int not null,
candidate_name varchar(50),
age int ,gender varchar(6),
Location varchar(100) default 'Kolkata',
unique(candidate_id),primary key(candidate_id))






desc candidates_sql

drop table candidates_sql

