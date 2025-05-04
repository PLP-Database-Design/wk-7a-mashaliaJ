-- Question 1
-- Creating the normalized table
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50),
    PRIMARY KEY (OrderID, Product)
);

-- Inserting the normalized data
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES 
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

-- Question 2 
-- Creating Orders table
CREATE TABLE Orders2 (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Creating OrderDetails table
CREATE TABLE OrderDetails2 (
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders2(OrderID)
);

-- Inserting data into Orders table
INSERT INTO Orders2 (OrderID, CustomerName)
VALUES 
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

-- Inserting data into OrderDetails table
INSERT INTO OrderDetails2 (OrderID, Product, Quantity)
VALUES 
    (101, 'Laptop', 2),
    (101, 'Mouse', 1),
    (102, 'Tablet', 3),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 2),
    (103, 'Phone', 1);   