CREATE DATABASE store;
USE store;

CREATE TABLE Category (
    Category_ID int NOT NULL,
    Name varchar(100) NOT NULL,
    Description varchar(100) NOT NULL,
    CONSTRAINT Category_pk PRIMARY KEY (Category_ID)
);

-- Table: Customer
CREATE TABLE Customer (
    Customer_ID int NOT NULL,
    Name varchar(100) NOT NULL,
    Email varchar(100) NOT NULL,
    Password varchar(100) NOT NULL,
    Billing_address varchar(255) NOT NULL,
    CONSTRAINT Customer_pk PRIMARY KEY (Customer_ID)
);

-- Table: Order
CREATE TABLE `Order` (
    Order_ID int NOT NULL,
    Customer_ID int NOT NULL,
    Shipping_address varchar(255) NOT NULL,
    Order_address varchar(255) NOT NULL,
    Order_date VARCHAR(255) NOT NULL,
    Order_status varchar(100) NOT NULL,
    CONSTRAINT Order_pk PRIMARY KEY (Order_ID)
);

-- Table: Order details
CREATE TABLE Order_details (
    Orderdetail_ID int NOT NULL,
    Order_ID int NOT NULL,
    Product_ID int NOT NULL,
    Price float NOT NULL,
    Quantity int NOT NULL,
    CONSTRAINT Order_details_pk PRIMARY KEY (Orderdetail_ID)
);

-- Table: Product
CREATE TABLE Product (
    Product_ID int NOT NULL,
    Name varchar(100) NOT NULL,
    Price float NOT NULL,
    Description text NOT NULL,
    Category varchar(100) NOT NULL,
    CONSTRAINT Product_pk PRIMARY KEY (Product_ID)
);

-- Table: Product Category
CREATE TABLE Product_Category (
    ProductCategory_ID int NOT NULL,
    Product_ID int NOT NULL,
    Description text NOT NULL,
    CONSTRAINT Product_Category_pk PRIMARY KEY (ProductCategory_ID)
);

-- foreign keys
-- Reference: Order details_Order (table: Order details)
ALTER TABLE `Order_details` ADD CONSTRAINT `Order_details_Order` FOREIGN KEY `Order_details_Order` (Order_ID)
    REFERENCES `Order` (Order_ID);

-- Reference: Order details_Product (table: Order details)
ALTER TABLE `Order_details` ADD CONSTRAINT `Order_details_Product` FOREIGN KEY `Order_details_Product` (Product_ID)
    REFERENCES Product (Product_ID);

-- Reference: Order_Customer (table: Order)
ALTER TABLE `Order` ADD CONSTRAINT `Order_Customer` FOREIGN KEY `Order_Customer` (Customer_ID)
    REFERENCES Customer (Customer_ID);

-- Reference: Product_Category_Category (table: Product Category)
ALTER TABLE `Product_Category` ADD CONSTRAINT `Product_Category_Category` FOREIGN KEY `Product_Category_Category` (Product_ID)
    REFERENCES Category (Category_ID);


-- End of file.

