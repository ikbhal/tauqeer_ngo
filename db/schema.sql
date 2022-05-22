create table user (id int primary key auto_increment, username varchar(512), password varchar(512),
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table address(id int primary key auto_increment, address_line1 varchar(512), address_line2 varchar(512), state varchar(50), pincode varchar(10),
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table user_address(id int primary key auto_increment, user_id int, address_id int,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table  benefit(id int primary key auto_increment, name varchar(512), amount float, description text,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table donors(id int primary key auto_increment, donor_id int, description text,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table beneficiaries(id int primary key auto_increment, user_id int, description text,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table employee(id int primary key auto_increment, user_id int, salary float, description text,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table donor_benefit_beneficiary(id int primary key auto_increment, donor_id int, benefit_id int, beneficiary_id int,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table expenses(id int primary key auto_increment, name varchar(512), amount float, description text,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table funds(id int primary key auto_increment, name varchar(512), amount float, description text,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

create table donor_funds(idint primary key auto_increment, donor_id int, funds_id int, amount float,
create_at timestamp default current_timestamp, update_at timestamp default current_timestamp on update current_timestamp);

