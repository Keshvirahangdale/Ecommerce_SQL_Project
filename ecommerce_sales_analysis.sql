create database ecommerce_sales_analysis;

use ecommerce_sales_analysis;

create table categories (
	category_id int primary key,
    category_name varchar(50) not null
);

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books'),
(4, 'Footwear'),
(5, 'Home & Kitchen');

select * from categories;

create table customers (
	customer_id int primary key,
    customer_name varchar(100) not null,
    email varchar(100) unique,
    city varchar(50),
    registration_date date
);

INSERT INTO customers
(customer_id, customer_name, email, city, registration_date)
VALUES
(1,'Aarav Sharma','aarav@gmail.com','Mumbai','2024-01-15'),
(2,'Priya Patel','priya@gmail.com','Ahmedabad','2024-02-10'),
(3,'Rohan Verma','rohan@gmail.com','Delhi','2024-01-25'),
(4,'Sneha Gupta','sneha@gmail.com','Pune','2024-03-05'),
(5,'Aditya Singh','aditya@gmail.com','Lucknow','2024-02-18'),
(6,'Neha Joshi','neha@gmail.com','Jaipur','2024-01-30'),
(7,'Karan Mehta','karan@gmail.com','Mumbai','2024-03-12'),
(8,'Ananya Rao','ananya@gmail.com','Bangalore','2024-02-28'),
(9,'Vikram Nair','vikram@gmail.com','Kochi','2024-01-20'),
(10,'Pooja Kapoor','pooja@gmail.com','Chandigarh','2024-03-15'),
(11,'Rahul Yadav','rahul@gmail.com','Patna','2024-02-08'),
(12,'Isha Malhotra','isha@gmail.com','Delhi','2024-01-12'),
(13,'Arjun Reddy','arjun@gmail.com','Hyderabad','2024-03-01'),
(14,'Kavya Iyer','kavya@gmail.com','Chennai','2024-02-14'),
(15,'Manish Kumar','manish@gmail.com','Ranchi','2024-01-22'),
(16,'Simran Kaur','simran@gmail.com','Amritsar','2024-03-18'),
(17,'Nitin Jain','nitin@gmail.com','Indore','2024-02-25'),
(18,'Meera Shah','meera@gmail.com','Surat','2024-01-08'),
(19,'Siddharth Roy','sid@gmail.com','Kolkata','2024-03-10'),
(20,'Aditi Mishra','aditi@gmail.com','Bhopal','2024-02-05');

select * from customers;

create table products (
	product_id int primary key,
    product_name varchar(100) not null,
    category_id int,
    price decimal(10, 2),
    stock_quantity int,
    foreign key (category_id)
    references categories(category_id)
);

INSERT INTO products
(product_id, product_name, category_id, price, stock_quantity)
VALUES
-- Electronics
(1,'Wireless Earbuds',1,2499.00,50),
(2,'Smart Watch',1,3999.00,40),
(3,'Bluetooth Speaker',1,1999.00,35),
(4,'Power Bank',1,1499.00,60),
(5,'Laptop Stand',1,999.00,45),
-- Clothing
(6,'Men T-Shirt',2,799.00,100),
(7,'Women Kurti',2,1299.00,70),
(8,'Denim Jeans',2,1799.00,80),
(9,'Hoodie',2,1499.00,50),
(10,'Formal Shirt',2,1199.00,65),
-- Books
(11,'Atomic Habits',3,499.00,120),
(12,'Deep Work',3,450.00,90),
(13,'Rich Dad Poor Dad',3,399.00,110),
(14,'The Psychology of Money',3,550.00,85),
(15,'Think and Grow Rich',3,350.00,95),
-- Footwear
(16,'Running Shoes',4,2499.00,55),
(17,'Casual Sneakers',4,2199.00,60),
(18,'Formal Shoes',4,2999.00,40),
(19,'Sports Sandals',4,1299.00,75),
(20,'Loafers',4,1899.00,50),

-- Home & Kitchen
(21,'Coffee Maker',5,3499.00,25),
(22,'Mixer Grinder',5,2799.00,30),
(23,'Water Bottle',5,499.00,100),
(24,'Dinner Set',5,1999.00,20),
(25,'Air Fryer',5,4999.00,15);

select * from products;

create table orders (
	order_id int primary key,
    customer_id int,
    order_date date,
    order_status varchar(30),
    foreign key (customer_id)
    references customers(customer_id)
);

INSERT INTO orders
(order_id, customer_id, order_date, order_status)
VALUES
(1,1,'2024-04-01','Delivered'),
(2,2,'2024-04-02','Delivered'),
(3,3,'2024-04-03','Processing'),
(4,4,'2024-04-04','Delivered'),
(5,5,'2024-04-05','Pending'),
(6,6,'2024-04-06','Delivered'),
(7,7,'2024-04-07','Shipped'),
(8,8,'2024-04-08','Delivered'),
(9,9,'2024-04-09','Cancelled'),
(10,10,'2024-04-10','Delivered'),
(11,11,'2024-04-11','Processing'),
(12,12,'2024-04-12','Delivered'),
(13,13,'2024-04-13','Pending'),
(14,14,'2024-04-14','Delivered'),
(15,15,'2024-04-15','Shipped'),
(16,16,'2024-04-16','Delivered'),
(17,17,'2024-04-17','Processing'),
(18,18,'2024-04-18','Delivered'),
(19,19,'2024-04-19','Cancelled'),
(20,20,'2024-04-20','Delivered');
INSERT INTO orders
(order_id, customer_id, order_date, order_status)
VALUES
(21,1,'2024-05-01','Delivered'),
(22,3,'2024-05-02','Pending'),
(23,5,'2024-05-03','Delivered'),
(24,7,'2024-05-04','Shipped'),
(25,9,'2024-05-05','Delivered'),
(26,11,'2024-05-06','Processing'),
(27,13,'2024-05-07','Delivered'),
(28,15,'2024-05-08','Pending'),
(29,17,'2024-05-09','Delivered'),
(30,19,'2024-05-10','Cancelled'),
(31,2,'2024-05-11','Delivered'),
(32,4,'2024-05-12','Processing'),
(33,6,'2024-05-13','Delivered'),
(34,8,'2024-05-14','Shipped'),
(35,10,'2024-05-15','Delivered'),
(36,12,'2024-05-16','Pending'),
(37,14,'2024-05-17','Delivered'),
(38,16,'2024-05-18','Processing'),
(39,18,'2024-05-19','Delivered'),
(40,20,'2024-05-20','Shipped');

select * from orders;

create table order_items (
	order_item_id int primary key,
    order_id int,
    product_id int,
    quantity int,
    item_price decimal(10, 2),
    foreign key (order_id)
    references orders(order_id),
    foreign key (product_id)
    references products(product_id)
);

INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, item_price)
VALUES
(1,1,1,2,2499.00),
(2,1,11,1,499.00),
(3,2,2,1,3999.00),
(4,2,23,2,499.00),
(5,3,6,3,799.00),
(6,3,13,1,399.00),
(7,4,16,1,2499.00),
(8,4,21,1,3499.00),
(9,5,8,2,1799.00),
(10,5,14,1,550.00),
(11,6,3,1,1999.00),
(12,6,24,1,1999.00),
(13,7,4,2,1499.00),
(14,7,12,1,450.00),
(15,8,17,1,2199.00),
(16,8,25,1,4999.00),
(17,9,7,2,1299.00),
(18,9,15,1,350.00),
(19,10,5,1,999.00),
(20,10,22,1,2799.00);
INSERT INTO order_items
(order_item_id, order_id, product_id, quantity, item_price)
VALUES
(21,11,9,1,1499.00),
(22,11,11,2,499.00),
(23,12,18,1,2999.00),
(24,12,23,3,499.00),
(25,13,10,2,1199.00),
(26,13,14,1,550.00),
(27,14,1,1,2499.00),
(28,14,21,1,3499.00),
(29,15,19,2,1299.00),
(30,15,12,1,450.00),
(31,16,2,1,3999.00),
(32,16,24,1,1999.00),
(33,17,6,2,799.00),
(34,17,15,2,350.00),
(35,18,20,1,1899.00),
(36,18,25,1,4999.00),
(37,19,8,1,1799.00),
(38,19,13,2,399.00),
(39,20,3,2,1999.00),
(40,20,22,1,2799.00);

SELECT count(*) FROM order_items;

create table payments (
	payment_id int primary key,
    order_id int,
    payment_date date,
    payment_method varchar(30),
    payment_amount decimal(10, 2),
    foreign key (order_id)
    references orders(order_id)
);

INSERT INTO payments
(payment_id, order_id, payment_date, payment_method, payment_amount)
VALUES
(1,1,'2024-04-01','UPI',5497.00),
(2,2,'2024-04-02','Credit Card',4997.00),
(3,4,'2024-04-04','Debit Card',5998.00),
(4,6,'2024-04-06','UPI',3998.00),
(5,8,'2024-04-08','Net Banking',7198.00),
(6,10,'2024-04-10','UPI',3798.00),
(7,12,'2024-04-12','Credit Card',4496.00),
(8,14,'2024-04-14','UPI',5998.00),
(9,16,'2024-04-16','Debit Card',5998.00),
(10,18,'2024-04-18','Net Banking',6898.00),
(11,21,'2024-05-01','UPI',3599.00),
(12,23,'2024-05-03','Credit Card',4498.00),
(13,25,'2024-05-05','UPI',2698.00),
(14,27,'2024-05-07','Debit Card',4448.00),
(15,29,'2024-05-09','UPI',2948.00),
(16,31,'2024-05-11','Credit Card',2797.00),
(17,33,'2024-05-13','UPI',2747.00),
(18,35,'2024-05-15','Net Banking',3048.00),
(19,37,'2024-05-17','Debit Card',3397.00),
(20,39,'2024-05-19','UPI',3098.00);

select * from payments;

-- Total Revenue
select 
sum(quantity * item_price) as total_revenue
from order_items;
-- 88401.00

-- top selling products
select
p.product_name,
sum(oi.quantity) as total_sold
from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_name
order by total_sold desc;

-- revenue by category
select 
c.category_name,
sum(oi.quantity * oi.item_price) as revenue
from categories c
join products p
on c.category_id = p.category_id
join order_items oi
on p.product_id = oi.product_id
group by c.category_name
order by revenue desc;
-- Home & Kitchen	29087.00
-- Electronics	25489.00
-- Clothing	15887.00
-- Footwear	12194.00
-- Books	5744.00

-- top customers
select 
cu.customer_name,
sum(oi.quantity * oi.item_price) as total_spent
from customers cu
join orders o
on cu.customer_id = o.customer_id
join order_items oi
on o.order_id = oi.order_id
group by cu.customer_name
order by total_Spent desc;

-- order status analysis
select
order_status,
count(*) as total_orders
from orders
group by order_status;
-- Delivered	21
-- Processing	6
-- Pending	5
-- Shipped	5
-- Cancelled	3

-- CTE query
WITH customer_sales AS (
    SELECT
        c.customer_name,
        SUM(oi.quantity * oi.item_price) AS total_sales
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY c.customer_name
)
SELECT *
FROM customer_sales
ORDER BY total_sales DESC;

-- Window Function 
WITH customer_sales AS (
    SELECT
        c.customer_name,
        SUM(oi.quantity * oi.item_price) AS total_sales
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY c.customer_name
)
SELECT
    customer_name,
    total_sales,
    RANK() OVER (ORDER BY total_sales DESC) AS ranking
FROM customer_sales;

-- Subquery
-- Customers spending above average:
SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM orders o
    JOIN order_items oi
    ON o.order_id = oi.order_id
    GROUP BY o.customer_id
    HAVING SUM(oi.quantity * oi.item_price) >
    (
        SELECT AVG(customer_total)
        FROM (
            SELECT SUM(oi.quantity * oi.item_price) AS customer_total
            FROM orders o
            JOIN order_items oi
            ON o.order_id = oi.order_id
            GROUP BY o.customer_id
        ) t
    )
);


CREATE VIEW customer_sales_summary AS
SELECT
    c.customer_name,
    SUM(oi.quantity * oi.item_price) AS total_sales
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_name;

SELECT * FROM customer_sales_summary;