create table if not exists netology.CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);


create table if not exists netology.ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references netology.CUSTOMERS(id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Ivan', 'Ivanov', 31, '+79689990102');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Petya', 'Petrov', 32, '+79261234567');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('Alexey', 'Alexeev', 33, '+78002000600');

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'laptop', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 3, 'samsung', 2);

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'sony', 2);