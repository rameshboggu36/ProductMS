drop database if exists prod_db;
create database prod_db;
use prod_db;

create table product (
prod_id varchar(30) not null,
product_name varchar(100),
price float,
stock int,
description varchar(500),
image varchar(50),
seller_id varchar(30),
category varchar(30),
sub_category varchar(30),
product_rating float,

constraint product_pk primary key (prod_id)
);

INSERT INTO `prod_db`.`product` (`prod_id`, `product_name`, `price`, `stock`, `description`, `image`, `seller_id`, `category`, `sub_category`, `product_rating`) VALUES ('3001', 'WATCH', '1000', '10', 'TITAN RAGA WITH GOLD PLATING', '9000.jpg', '4001', 'ACCESSORIES', 'WATCH', '4.6');
INSERT INTO `prod_db`.`product` (`prod_id`, `product_name`, `price`, `stock`, `description`, `image`, `seller_id`, `category`, `sub_category`, `product_rating`) VALUES ('3002', 'RING', '2000', '5', 'GOLD PLATED ', '9001.jpg', '4002', 'ACCESSORIES', 'JEWELLERY', '4.5');


create table subscribed_product (
buyer_id varchar(30),
prod_id varchar(30),
quantity int,

constraint subs_prod_pk primary key (buyer_id,prod_id)
);

INSERT INTO `prod_db`.`subscribed_product` (`buyer_id`, `prod_id`, `quantity`) VALUES ('2001', '3001', '1');
INSERT INTO `prod_db`.`subscribed_product` (`buyer_id`, `prod_id`, `quantity`) VALUES ('2002', '3002', '2');
