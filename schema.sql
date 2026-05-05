-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255) NOT NULL,
    Industry VARCHAR(100),
    CreditLimit DECIMAL(15, 2)
);

-- Create Invoices Table
CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    Amount DECIMAL(15, 2) NOT NULL,
    IssueDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    PaymentDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
