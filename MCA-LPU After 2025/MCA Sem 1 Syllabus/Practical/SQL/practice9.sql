use Practice;

create table order_details(
order_id int NOT NULL,
product_id int NOT NULL,
quantity int NOT NULL,
 PRIMARY KEY(order_id, product_id)
);

insert into order_details values(10248, 11, 12);
insert into order_details values(10248, 42, 10);
insert into order_details values(10250, 77, 6);
insert into order_details values(10253, 34, 5);
insert into order_details values(10253, 57, 6);
insert into order_details values(10253, 65, 7);

SELECT * FROM order_details;