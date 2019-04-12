drop table if exists customer;
drop table if exists bill;

create table customer (
customerId binary(16) not null,
customerFullName varchar(128),
unique(customerFullName),
   index(customerFullname),

   primary key(customerID)

);

create table bill (
   billID binary(16) not null,
   billCustomerId binary(16) not null,
   billStatus varchar (64),
   Primary key(billId),
   foreign key(billCustomerId) references customer(customerId)
);