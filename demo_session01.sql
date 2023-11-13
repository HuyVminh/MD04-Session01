-- tạo database
CREATE DATABASE session01;
USE session01;

-- tạo bảng users

CREATE TABLE users(
	ID int primary key,
	user_name varchar(50),
    email varchar(50),
    password varchar(255),
    address text
);
CREATE TABLE category(
	category_id int primary key,
	category_name varchar(50),
    description text,
    status bit
);
CREATE TABLE product(
    product_id int,
    product_name varchar(50),
    stock int,
    price float,
    description text,
    image text,
    category_id int
);