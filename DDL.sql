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

alter table userdetails modify id int not null auto_increment;
alter table userdetails modify email varchar(200) not null ;
alter table userdetails modify first_name varchar (200) not null ;
alter table userdetails modify last_name varchar (200) not null ;
alter table userdetails modify password varchar (200) not null ;
alter table userdetails modify contact_number varchar (10) not null ;
alter table userdetails modify verified boolean not null;
alter table userdetails modify creator_stamp DATETIME not null;
alter table userdetails modify creator_user varchar (200) not null;

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

create table candidate_bank_details(
id int primary key,
candidate_id int,
FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(id),
name varchar (200),
account_number varchar (200),
is_account_number_verified boolean,
ifsc_code varchar (200),
ifsc_code_verified boolean,
pan_number varchar (200),
pan_number_verified boolean,
addhaar_number varchar (200),
addhaar_number_verified boolean,
creator_stamp datetime,
creator_user varchar (200)
);

create table candidate_qualification(
id int primary key ,
candidate_id int,
FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(id),
diploma varchar (200),
degree_name varchar (200),
is_degree_name_verified boolean,
employee_decipline varchar (200),
is_employee_decipline_verified boolean,
passing_year varchar (100),
is_passing_year_verified boolean,
aggregate_percentage varchar (100),
final_year_percentage varchar (100),
is_final_year_percentage_verified boolean,
training_institute varchar (200),
is_training_institute_verified boolean,
training_duration_month varchar (100),
is_training_duration_month_verified boolean ,
other_training varchar (200),
is_other_training_verified boolean,
creator_stamp datetime,
creator_user varchar (200)
);
