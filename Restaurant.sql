-- Drop Customers table if it already exists
DROP TABLE IF EXISTS Customers;

-- Create Customers table
CREATE TABLE Customers (
    cstmr_id INT PRIMARY KEY,  -- No SERIAL since you want to manually insert IDs
    name_surname VARCHAR(30) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(30)
);

-- Insert data into Customers table (Manually setting cstmr_id)
INSERT INTO Customers (cstmr_id, name_surname, phone_number, email) 
VALUES 
    (1001, 'Vagif Aliyev', '+994-50-995-66-20', 'vaqifeliyev909@gmail.com'),
    (1002, 'Sahin Aliyev', '+994-51-945-65-21', 'sahineliyev909@gmail.com'),
    (1003, 'Faiq Bayramov', '+994-55-885-85-25', 'faiqbayramov855@gmail.com');

-- Retrieve all customers
ALTER TABLE Customers
ADD address VARCHAR(30);

UPDATE Customers SET address = 'Aliyar Aliyev str.123' WHERE cstmr_id = 1001;
UPDATE Customers SET address = 'Arif Heyderov str.246' WHERE cstmr_id = 1002;
UPDATE Customers SET address = 'Ataturk str.369' WHERE cstmr_id = 1003;

SELECT cstmr_id, name_surname, phone_number, email, address 
FROM Customers;



