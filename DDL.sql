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

alter table hiredcandidate modify id int not null auto_increment;
alter table hiredcandidate modify first_name varchar (200) not null;
alter table hiredcandidate modify middle_name varchar (200) not null;
alter table hiredcandidate modify last_name varchar (200) not null;
alter table hiredcandidate modify email_id varchar (200) not null;
alter table hiredcandidate modify hired_city varchar (200) not null;
alter table hiredcandidate modify degree varchar (200) not null;
alter table hiredcandidate modify hired_date datetime not null;
alter table hiredcandidate modify mobile_number varchar (10) not null;
alter table hiredcandidate modify permanent_pincode int not null;
alter table hiredcandidate modify hired_lab varchar (200) not null;
alter table hiredcandidate modify attitude varchar (200) not null;
alter table hiredcandidate modify communication_remark varchar (200) not null;
alter table hiredcandidate modify knowledge_remark varchar (200) not null;
alter table hiredcandidate modify aggregate_remark varchar (200) not null;
alter table hiredcandidate modify status varchar (200) not null;
alter table hiredcandidate modify creator_stamp DATETIME not null;
alter table hiredcandidate modify creator_user varchar (200) not null;

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

alter table fellowship_candidate modify id int not null auto_increment;
alter table fellowship_candidate modify first_name varchar (200) not null;
alter table fellowship_candidate modify middle_name varchar (200) not null;
alter table fellowship_candidate modify last_name varchar (200) not null;
alter table fellowship_candidate modify email_id varchar (200) not null;
alter table fellowship_candidate modify hired_city varchar (200) not null;
alter table fellowship_candidate modify degree varchar (200) not null;
alter table fellowship_candidate modify hired_date datetime not null;
alter table fellowship_candidate modify mobile_number varchar (10) not null;
alter table fellowship_candidate modify permanent_pincode int not null;
alter table fellowship_candidate modify hired_lab varchar (200) not null;
alter table fellowship_candidate modify attitude varchar (200) not null;
alter table fellowship_candidate modify communication_remark varchar (200) not null;
alter table fellowship_candidate modify knowledge_remark varchar (200) not null;
alter table fellowship_candidate modify aggregate_remark varchar (200) not null;
alter table fellowship_candidate modify creator_stamp DATETIME not null;
alter table fellowship_candidate modify creator_user varchar (200) not null;
alter table fellowship_candidate modify birth_date date not null;
alter table fellowship_candidate modify is_birth_date_verified boolean not null;
alter table fellowship_candidate modify parent_name varchar (200) not null;
alter table fellowship_candidate modify parent_occupation varchar (200) not null;
alter table fellowship_candidate modify parents_mobile_number varchar (10) not null;
alter table fellowship_candidate modify parents_anual_salary varchar (200) not null;
alter table fellowship_candidate modify local_address varchar (200) not null;
alter table fellowship_candidate modify parmanent_address varchar (200) not null;
alter table fellowship_candidate modify photo_path varchar (200) not null;
alter table fellowship_candidate modify joining_date date not null;
alter table fellowship_candidate modify candidate_status varchar (200) not null;
alter table fellowship_candidate modify personal_information varchar (200) not null;
alter table fellowship_candidate modify bank_information varchar (200) not null;
alter table fellowship_candidate modify educational_information varchar (200) not null;
alter table fellowship_candidate modify document_status boolean not null;
alter table fellowship_candidate modify remark varchar (200) not null;


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

alter table candidate_bank_details modify id int not null auto_increment;
alter table candidate_bank_details modify candidate_id int not null;
alter table candidate_bank_details modify name varchar (200) not null; 
alter table candidate_bank_details modify account_number varchar (200) not null; 
alter table candidate_bank_details modify is_account_number_verified boolean not null; 
alter table candidate_bank_details modify ifsc_code varchar (200) not null;
alter table candidate_bank_details modify ifsc_code_verified boolean not null;
alter table candidate_bank_details modify pan_number varchar (200) not null;
alter table candidate_bank_details modify pan_number_verified boolean not null;
alter table candidate_bank_details modify addhaar_number varchar (200) not null;
alter table candidate_bank_details modify addhaar_number_verified boolean not null;
alter table candidate_bank_details modify creator_stamp datetime not null;
alter table candidate_bank_details modify creator_user varchar (200) not null;

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

alter table candidate_qualification modify id int not null auto_increment;
alter table candidate_qualification modify candidate_id int not null;
alter table candidate_qualification modify diploma varchar (200) not null;
alter table candidate_qualification modify degree_name varchar (200) not null;
alter table candidate_qualification modify is_degree_name_verified boolean not null;
alter table candidate_qualification modify employee_decipline varchar (200) not null;
alter table candidate_qualification modify is_employee_decipline_verified boolean not null;
alter table candidate_qualification modify passing_year varchar (100) not null;
alter table candidate_qualification modify is_passing_year_verified boolean not null;
alter table candidate_qualification modify aggregate_percentage varchar (100) not null;
alter table candidate_qualification modify final_year_percentage varchar (100) not null;
alter table candidate_qualification modify is_final_year_percentage_verified boolean not null;
alter table candidate_qualification modify training_institute varchar (200) not null;
alter table candidate_qualification modify is_training_institute_verified boolean not null;
alter table candidate_qualification modify other_training varchar (200) not null;
alter table candidate_qualification modify is_other_training_verified boolean not null;
alter table candidate_qualification modify creator_stamp datetime not null;
alter table candidate_qualification modify creator_user varchar (200) not null;

create table candidate_document (
id int not null primary key auto_increment,
candidate_id int not null,
FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate(id),
doc_type varchar (200) not null,
doc_path varchar (200) not null,
status varchar (200) not null,
creator_stamp datetime not null,
creator_user varchar (200) not null
);

create table company (
id int not null primary key auto_increment,
name varchar (200) not null,
address varchar (500) not null,
location varchar (200) not null,
status varchar (200) not null,
creator_stamp datetime not null,
creator_user varchar (200)
);

create table tech_stack (
id int not null primary key auto_increment,
tech_name varchar (100) not null,
image_path varchar (100) not null,
framework varchar (100) not null,
current_status varchar (50) not null,
creator_stamp datetime not null,
creator_user varchar (100)
);

create table tech_type (
id int not null primary key auto_increment,
type_name varchar (15) not null,
current_status varchar (50) not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);

create table maker_program (
id int not null primary key auto_increment,
program_name varchar (50) not null,
program_type varchar (50) not null,
program_link varchar(50) not null,
tech_stack_id int not null,
Foreign key (tech_stack_id) References tech_stack (id),
tech_type_id int not null,
foreign key (tech_type_id) References tech_type (id),
is_progam_approved boolean not null,
description varchar (50) not null,
status boolean not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);

create table app_parameter (
id int not null primary key auto_increment,
key_type varchar (10) not null,
key_value varchar (6) not null,
key_text varchar (8) not null,
current_status varchar(2) not null,
lastupd_user varchar (50) not null,
lastupd_stamp datetime not null,
creator_stamp datetime not null,
creator_user varchar (50) not null,
seq_number int not null
);

create table lab (
id int not null primary key auto_increment,
name varchar (50) not null,
location varchar (50) not null,
address varchar (50) not null,
status boolean not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);

create table mentor (
id int not null primary key auto_increment,
name varchar (50) not null,
mentor_type varchar (10) not null,
lab_id int not null,
foreign key (lab_id) references lab (id),
status boolean not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);
