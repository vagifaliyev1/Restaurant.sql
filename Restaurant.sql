DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers(
  cstmr_id INT PRIMARY KEY,
  name_surname VARCHAR(30) NOT NULL,
  phone_number VARCHAR(20) UNIQUE,
  email VARCHAR(30) UNIQUE
);

ALTER TABLE Customers ADD address VARCHAR(30);

START TRANSACTION;

INSERT INTO Customers (cstmr_id, name_surname, phone_number, email, address)
VALUES
      (1001, 'Vagif Aliyev', '+994-50-995-66-20', 'vaqifeliyev909@gmail.com', 'Aliyar Aliyev str.12'),
      (1002, 'Sahin Aliyev', '+994-51-945-65-21', 'sahineliyev909@gmail.com', 'Arif Heyderov str.24'),
      (1003, 'Faiq Bayramov', '+994-55-885-85-25', 'faiqbayramov855@gmail.com', 'Ataturk str.36');
COMMIT;

SELECT * FROM Customers;

START TRANSACTION;
DELETE FROM Customers WHERE cstmr_id = 1001;

ROLLBACK;
