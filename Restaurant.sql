DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Menu;

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

CREATE TABLE Menu (
   item_id INT PRIMARY KEY,
   name_item VARCHAR(30) NOT NULL,
   description TEXT,
   price DECIMAL (10,2) NOT NULL, 
   availability BOOLEAN DEFAULT TRUE
);

INSERT INTO Menu (item_id, name_item, description, price, availability)
VALUES
    (100, 'Cheeseburger', 'Juicy beef patty with melted cheese, lettuce, and tomato.', 7.95, TRUE),
    (101, 'Margherita Pizza', 'Classic pizza with tomato sauce, mozzarella, and basil.', 10.50, TRUE),
    (102, 'Chocolate Cake', 'Rich chocolate cake with creamy frosting.', 5.75, TRUE),
    (103, 'Coca-Cola', 'Chilled 500ml bottle of Coca-Cola.', 2.50, TRUE),
    (104, 'Pasta Carbonara', 'Creamy pasta with bacon and parmesan cheese.', 9.95, FALSE);

CREATE TABLE MenuItems AS
SELECT
   item_id,
   name_item,
   price
FROM Menu;
SELECT * FROM MenuItems;

SELECT * FROM Menu;


