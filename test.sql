create database test;
use test;
 
create table address(
id int,
addresline_1 varchar(30),
pincode varchar(10)
);

create table people(
id int,
first_name varchar(20),
last_name varchar(20),
address_id int
);
create table pets(
id int,
name varchar(20),
species varchar(20),
owner_id int
);

show tables;
-----------------------------------------------------
alter table address
 add primary key(id);
 alter table address
drop primary key;
alter table address
 add primary key(id);
alter table people
 add primary key(id);
alter table address
 add primary key(id);
---------------------------------------------------------------

describe address;
describe people;
describe pets;
alter table people
add constraint FK_peopleAddress
foreign key(address_id) references address(id);

alter table people
drop foreign key FK_peopleAddress;

alter table people
add constraint FK_peopleAddress
foreign key(address_id) references address(id);

alter table pets
add constraint FK_customer
foreign key(owner_id) references people(id);

---------------------------------------------------
describe pets;
select * from pets;
alter table pets
add constraint u_species unique(species);
alter table pets
drop index u_species;
---------------------------------
alter table pets change `species` `animal_type` varchar(20);
describe pets;
alter table pets change  `animal_type` `species` varchar(20);
alter table address change `addresline_1` `city` varchar(30);
------------------------------------
describe address;
alter table address modify city varchar(20);

-----------------------------------------------------
describe people;
alter table people 
add column email varchar(25);
alter table people
add constraint u_email unique(email);
describe address;
alter table address modify pincode varchar(7);
--------------------------

