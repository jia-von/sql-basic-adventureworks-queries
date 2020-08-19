--Added 'Home' column to the 'Address' table

ALTER TABLE `address`
ADD `Home` varchar(50);

--Add address for the customer with account number AW00000222 with 1 Churchill Square Edmonton AB A1A 1A1 

UPDATE address SET Home = '1 Churchill Square Edmonton AB A1A 1A1' WHERE AddressID = '564' 

--Result is screen capped. 