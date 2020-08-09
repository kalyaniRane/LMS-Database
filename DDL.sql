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

create table fellowship_candidate(
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
creator_stamp DATETIME,
creator_user varchar (200),
birth_date date,
is_birth_date_verified boolean,
parent_name varchar (200),
parent_occupation varchar (200),
parents_mobile_number varchar (10),
parents_anual_salary varchar (200),
local_address varchar (200),
parmanent_address varchar (200),
photo_path varchar (200),
joining_date date,
candidate_status varchar (200),
personal_information varchar (200),
bank_information varchar (200),
educational_information varchar(200),
document_status boolean,
remark varchar (200)
);


