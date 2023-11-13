-- tạo database
CREATE DATABASE session01;
USE session01;

-- tạo bảng users

CREATE TABLE users(
	id int primary key,
	user_name varchar(50),
    email varchar(50),
    password varchar(255),
    address text
);
CREATE TABLE category(
	id int primary key,
	category_name varchar(50),
    description text,
    status bit
);
CREATE TABLE product(
    id int,
    product_name varchar(50),
    stock int,
    price float,
    description text,
    image text,
    PRIMARY KEY(id),
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES category(id)
);
CREATE TABLE orders(
	id int primary key,
    created_at date,
    note text,
    status bit,
    user_id int,
    FOREIGN KEY(user_id) REFERENCES users(id)
);
   
CREATE TABLE order_detail(
	id_order int,
    FOREIGN KEY(id_order) REFERENCES orders(id),
    id_product int,
    FOREIGN KEY(id_product) REFERENCES product(id),
    quantity int,
    price float
); 