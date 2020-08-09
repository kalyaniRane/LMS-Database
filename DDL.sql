create database lms;

use lms;

create table userDetails(
id int primary key,
email varchar (200),
first_name varchar (200),
last_name varchar (200),
password varchar (200),
contact_number varchar (10),
verified boolean,
creator_stamp DATETIME,
creator_user varchar (200)
);

create table hiredCandidate(
id int primary key,
first_name varchar (200),
middle_name varchar (200),
last_name varchar (200),
email_id varchar (200),
hired_city varchar (200),
degree varchar (200),
hired_date datetime,
mobile_number varchar (10),
permanent_pincode int,
hired_lab varchar (200),
attitude varchar (200),
communication_remark varchar (200),
knowledge_remark varchar (200),
aggregate_remark varchar (200),
status varchar (200) ,
creator_stamp datetime ,
creator_user varchar (200)
);

