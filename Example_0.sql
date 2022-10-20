/* In this lesson
1. Showing & using  databases and tables
2. Operators
3. String SEARCHES
4. Creating a table
*/


-- How to show all databases
SHOW DATABASES;
-- How to switch to/use a particular database
-- Eg if Nikky is a database name
USE Nikky;

-- How to show tables in a particular databases
SHOW TABLES;

-- DATATYPES
/* some DATATYPES IN mysql - different ways data can be represented
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
|    Strings         |    NUMBERS              |     BOOLEAN   |     DATES                        |
| CHAR(255)          |  INTEGERS               |   TRUE - 1    | DATETIME (can include time zone) |
| VARCHAR (65535)    |  INT - (255)            |   FALSE - 0   | TIMESTAMP (includes time zone)   |
| TEXT (65535 BYTES) |  FLOAT (decimal 32 bits)|               | DATE                             |
| LONGTEXT (4.2M)    |  DOUBLE(decimal 64 bits)|               | TIME                             |
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
*/

-- Operators in mysql
/*
< , > , /, + , - ,  *  , <> (not equal to), >=, <=, != (not equal to),

% when used in numbers is used to divide two numbers and gives a remainder while
 the / (divide) would return the answer of the two numbers being divided.

 between

 Like - search for a pattern

 In - to specificy multiple possible values for a columns

 AND, OR and NOT operators - combine with where. AND and OR operators are used
 to filter records based on one or more conditions

*/

-- Example 1:
SELECT * FROM Consulting WHERE Salary = 120000;
-- Example 2:
SELECT * FROM Consulting WHERE Salary > 15000;

-- Statement Clauses
/* Statement - Definite or clear Expression of something
   Expression - the action of making something known
   Clauses - a group of words in this case Expression
*/

-- STRING SEARCHES
--  has to be within single quotes use below:
-- Modulus (%) - it represents any multiple character when running a search
-- Underscore (_) - defines the number of single one character when running a search

-- Example 1 of a clause searching a string
/* this will search the table Consulting and the column Name all the entries
where the name has an 'a' in it
*/
SELECT * FROM Consulting where Name like '%a%';

-- Example 2
/* this will search the table Consulting and the column Name all the entries
where the name that ends with 'a'
*/
SELECT * FROM Consulting where Name like '%a';

-- Example 3
/* this will search the table Consulting and the column Name all the entries
where the name that begin with 'a'
*/
SELECT * FROM Consulting where Name like 'a%';

-- Example 4
/* this will search the table Consulting and the column Name all the entries
where the name that begin with 'K' and has 4 characters (i.e. 3 underscore signs
after K and would return Kate in our table consulting.
If this is amended to K__ (i.e. 2 underscore signs) it returns an empty set as
the table has no name beginning with K that is 3 characters long
*/
SELECT * FROM Consulting where Name like 'K___'

  -- mySQL STATEMENTS

-- To show database lists you type:
SHOW DATABASES;

-- To create a database for example Nikky
CREATE Nikky;

-- To call a database you type:
USE Nikky;

-- SCHEMA
/*
A Database is made up of tables. A table is made up of rows and columns
A Database schema is a blueprint or architecture of how the data will look
How do you see a schema of a particular table? Use describe database name.tablename:
*/
-- Example 1
DESCRIBE nikky.Consulting;

-- COLLATION
/*
Collations in SQL Server provide sorting rules, case, and accent sensitivity properties
for your data. Collation defines the logic of how the database objects are collected
and stored.
*/
-- To see collation type as below.
Select @@character_set_database, @@collation_database;
/* Example of what is returned for this command
+--------------------------+----------------------+
| @@character_set_database | @@collation_database |
+--------------------------+----------------------+
| utf8mb4                  | utf8mb4_0900_ai_ci   |
+--------------------------+----------------------+
*/

-- CREATING tables
/* To create a table you need to define datatypes for example
CREATE TABLE [name of table] ([insert parameters which are name/heading of columns, datatype]);
*/
-- Example 1:
CREATE TABLE consulting (StaffID INT, Address VARCHAR(25), Salary INT,
  Name VARCHAR(25));

-- Example 2
CREATE TABLE consulting2 (StaffID INT NOT NULL, Address VARCHAR(25), Salary INT NOT NULL, Name VARCHAR(25), PRIMARY KEY (StaffID));

/*
Note you can define datatype like:
- INT(3) which will mean those column entries will be limited to 3 characters
- INT(3) NOT NULL AUTO_INCREMENT - cannot be zero then once defined will increase
by 1 and will be 3 characters long
- VARCHAR(20) - alphanumeric limit to 20 characters
- TEXT - used for longer chunks of text
*/

/*
To see the Shows the attributes, types of attributes, key information, whether NULL is permitted,
defaults, and other information for a table use below:
*/
-- Example:
SHOW COLUMNS FROM consulting;
