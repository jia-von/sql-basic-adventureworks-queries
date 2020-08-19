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

