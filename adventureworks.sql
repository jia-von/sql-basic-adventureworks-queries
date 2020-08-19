--Requirements 1. Query: What kind of credit card does Ms. Carla J. Adams own?
-- Find Ms. Carla J. Adams 
SELECT Title, FirstName, MiddleName, LastName, rowguid FROM `contact` WHERE LastName = 'Adams'; 

--Data obtained for Ms. Carla J. Adams
-- contactID = 8, 
--phone: 107-555-0138, 
--email: carla0@adventure-works.com

--It was noted that ContactID foreign key in 'contact' was found in 'salesorderheader' CreditCardID - '8937' was found 

SELECT CreditCardID, ContactID FROM `salesorderheader` WHERE ContactID ='8';

--Foreign key CreditCardID was found in both SalesOrderHeader and CreditCard.
SELECT CardType, CreditCardID FROM `creditcard` WHERE CreditCardID ='8937'; 

--Therefore Ms. Carla J Adams owns a credit card called Vista

--Question 2: Query: Print all of the addresses for customer with account number AW00000222
--It was noted that table 'SalesOrderHeader' shares the same CustomerID foreign key as the 'Customer' table. Therefore for AccountNumber: AW00000222, the CustomerID is 222

SELECT AccountNumber, CustomerID FROM `customer` WHERE AccountNumber ='AW00000222' 

--It was noted that 'CustomerAddress' and 'Customer' shares the foreign key with CustomerID. Therefore the AddressID found was 1025 and 11381. 

SELECT AddressID, CustomerID FROM `customeraddress` WHERE CustomerID ='222' 

--Within 'Address' Table using AddressID 1025 and 11381.

SELECT AddressLine1, AddressLine2, City, StateProvinceID, PostalCode, AddressID FROM `address` WHERE AddressID IN ('1025', '11381') 

--The addresses for AccountNumber AW00000222 are:
--2530 South Colorado Blvd. Denver 80203 	
--2000 300th Street Denver 80203

--Question 3: Print the city of the customer with customer ID number 40 (found correct record)
--It is noted that the 'CustomerAddress' table have customerID. 'Address' and 'CustomerAddress' shares the same foreign key of 'AddressID'

--Thefore a search of 'CustomerID' in CustomerAddress is completed first. 

SELECT CustomerID, AddressID FROM `customeraddress` WHERE CustomerID = '40' 

--Address ID: 564. 
--Second step is to do a search in 'Address' table. 

SELECT City FROM `address` WHERE AddressID = '564' 

--The final answer for the city of CustomerID: 40 is Laredo. 






