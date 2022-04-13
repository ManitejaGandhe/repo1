-- INSERT INTO category VALUES (4, "electronics", "it contains the electronic appliances");
-- SELECT * FROM category;


-- INSERT INTO `order` VALUES (4, 3, "House#17 Street2 Downtown Mexico USA", "House#17 Street2 Downtown Mexico USA","2022-04-09", "pending");
-- SELECT * FROM `order`;


-- INSERT INTO product VALUES (4, "Headphones", 80, "This is headphone", "Electronics");
-- SELECT * FROM product;


-- UPDATE order_details SET Quantity = 3 WHERE Orderdetail_ID = 3;
-- SELECT * FROM order_details;


-- UPDATE customer SET PASSWORD = "@matt123" WHERE Customer_ID = 3;
-- SELECT * FROM customer;


-- DELETE FROM `order` WHERE Order_ID = 4;
-- SELECT * FROM `order`;


-- SELECT * FROM category;


-- SELECT * FROM customer JOIN `order` WHERE `order`.Order_ID=customer.Customer_ID;


-- SELECT * FROM `order` JOIN order_details WHERE `order`.Order_ID=order_details.Order_ID;


-- SELECT SUM(Price) AS total_price FROM order_details;


-- SELECT COUNT(Product_ID) AS products FROM product;


-- SELECT COUNT(Quantity) AS quantity FROM order_details;


-- SELECT * FROM customer,`order`;