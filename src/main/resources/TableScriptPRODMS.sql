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

insert into product values('P001','Samsung Galaxy M31',10999.00,15,'Ocean blue colour, 6GB/128GB, Exynos 9611 Processor 2.3GHz Octa Core, 64MP Quad Camera,6000 mAh Battery ','samsung.png','S1','Mobiles','SmartPhones',4.5);
insert into product values('P002','Redmi 9',8499.00,30,'Carbon black colour, 4GB/64GB, Helio G35 Processor 2.3GHz Octa Core, 13+2MP Rear Camera,5000 mAh Battery', 'redmi.png','S1','Mobiles','SmartPhones',4.00);
insert into product values('P003','Mi 4A PRO 80 cm',13999.00,18 ,' Android TV with Google Data Saver, HD Ready 1366 x 768 Pixels, 20 W Sound Output,60 Hz Refresh Rate, LED, Built in Wi-Fi','miTV.png','S2','Electronics','Televisions',4.3);

create table subscribed_product (
buyer_id varchar(30),
prod_id varchar(30),
quantity int,

constraint subs_prod_pk primary key (buyer_id,prod_id)
);

insert into subscribed_product values('1','P001',2);
insert into subscribed_product values('2','P002',1);
insert into subscribed_product values('3','P003',2);