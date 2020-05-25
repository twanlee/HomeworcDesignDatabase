create database Showroom;
create table Customers(
customer_id int2 primary key not null,
customer_firstName varchar(255) not null,
customer_lastName varchar(255) not null,
customer_phoneNumber int1 not null,
customer_address varchar (500) not null
);
create table ProductLine(
productLine_id int4 not null primary key,
brand varChar(300) not null,
description_product varchar(500)
);
create table Products(
product_id int2 not null primary key,
product_desciption varchar (500),
productLine int4,
foreign key (productLine) references ProductLine(productLine_id)
);
create table Orders(
orderNumber int4 not null primary key,
purchaseDate date not null,
shipping_date date not null,
quantity int4 not null,
pricePerUnit int,
diverliredDate date not null,
product_id int not null,
foreign key (product_id) references Products(product_id)
);
create table Employee(
firsname varchar(255) not null,
lastname varchar(255) not null,
employee_id int4 not null primary key,
manager_id int4 not null,
taskName varchar(300),
email varchar(255)
);
create table Offices(
officeCode int4 not null primary key,
address varchar (500) not null,
telephone int1 not null,
country varchar(255) not null
);
create table Payments(
checkNumber int not null primary key,
customerNumber int4 not null,
statusPayment varChar(25) not null,
paymentDate date not null,
amount float not null,
foreign key (customerNumber) references Customers(customer_id)
);
create table orderDetails(
orderId int not null,
paymentId int not null,
primary key(orderId,paymentId),
foreign key (orderId) references Orders(orderNumber),
foreign key(paymentId) references Payments (checkNumber)
);


