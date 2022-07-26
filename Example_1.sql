-- this is my first sql program
SELECT LastName, FirstName, customerNumber FROM Customers;
/*
I want to count the number of last names where the value
is equal to Nikky.
 */
SELECT COUNT(LastName) FROM Customers WHERE LastName = 'Nikky';
/*Create a table consulting with columns
+++++++++++++++++++++++++++++++++++
|StaffID | Address | Salary | Name|
+++++++++++++++++++++++++++++++++++
*/
CREATE TABLE consulting (StaffID INT, Address VARCHAR(25), Salary INT,
  Name VARCHAR(25));
-- alter the table consulting and amend StaffID to auto increment
ALTER TABLE consulting MODIFY COLUMN StaffID INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (StaffID);
 /*
I am populating the table consulting with columns
+++++++++++++++++++++++++++++++++++
|StaffID | Address | Salary | Name|
+++++++++++++++++++++++++++++++++++
 */
INSERT INTO consulting (Address, Salary, Name) VALUES
('Park Avenue', 30000, 'Susan'),
('Parklands', 120000, 'Prince'),
('Loresho', 50000, 'Scotty'),
('Guezenveld', 42000, 'Leo'),
('Almere', 10000, 'Kate'),
('Utrecht', 12000, 'Vivian'),
('New York', 48000, 'Ruth'),
('San Francisco', 30000, 'Elizabeth'),
('Manhattan', 58000, 'Henry'),
('California', 62000, 'Andrew')
;
