--Added 'Home' column to the 'Address' table

ALTER TABLE `address`
ADD `Home` varchar(50);

--Add address for the customer with account number AW00000222 with 1 Churchill Square Edmonton AB A1A 1A1 
-- ALTER TABLE METHOD from @link: https://www.w3schools.com/sql/sql_alter.asp

UPDATE address SET Home = '1 Churchill Square Edmonton AB A1A 1A1' WHERE AddressID = '564' 

--Result is screen capped. 

--Question 3: Relationships between customer table and address table are all properly maintained with Foreign Keys
--I have decided to add CustomerID into Address Table as a foreign key between customer and address table. 
--ALTER TABLE method from @link: https://www.w3schools.com/sql/sql_foreignkey.asp

--Step 1: Add a column CustomerID in the 'Address' table

ALTER TABLE address
ADD CustomerID int(11);

--CustomerID found in 'customer' table has int(11), therfore int(11) is defined in the 'address' table

--Step 2: Link 'customer' and 'address' table with foreign key Customer
ALTER TABLE address
ADD CONSTRAINT FK_address_customer 
FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID) ;

--FAILED  to complete the insetion using sub-query. 
