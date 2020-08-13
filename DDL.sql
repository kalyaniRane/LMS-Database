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

create table mentor_ideation_map (
id int not null primary key auto_increment,
parent_id int not null,
foreign key (parent_id) References mentor (id),
mentor_id int not null,
foreign key (mentor_id) References mentor (id),
status boolean not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);

create table mentor_tech_stack (
id int not null primary key auto_increment,
mentor_id int not null ,
foreign key (mentor_id) references mentor (id),
tech_stack_id int not null,
foreign key (tech_stack_id) references tech_stack (id),
status varchar (10) not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);

create table lab_threshold (
id int not null primary key auto_increment,
lab_id int not null,
foreign key (lab_id) references lab (id),
lab_capacity varchar (50) not null,
lead_threshold varchar (50) not null,
ideation_engg_threshold varchar (50) not null,
buddy_engg_threshold varchar (50) not null,
status varchar (10) not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);

create table company_requirement (
id int not null primary key auto_increment,
company_id int not null,
foreign key (company_id) references company (id),
requested_month varchar (10) not null,
city varchar (20) not null,
is_doc_verification boolean not null,
requirement_doc_path varchar (20) not null,
no_of_engg int not null,
tech_stack_id int not null,
foreign key (tech_stack_id) references tech_stack (id),
tech_type_id int not null,
foreign key (tech_type_id) references tech_type (id),
maker_program_id int not null,
foreign key (maker_program_id) references maker_program (id),
lead_id int not null,
foreign key (lead_id) references mentor (id),
ideation_engg_id int not null,
foreign key (lead_id) references mentor (id),
buddy_engg_id int not null,
foreign key (lead_id) references mentor (id),
special_remark varchar (20) not null,
status varchar (10) not null,
creator_stamp datetime not null,
creator_user varchar (20) not null
);

ALTER TABLE company_requirement
ADD FOREIGN KEY (ideation_engg_id) REFERENCES mentor (id);

ALTER TABLE company_requirement
ADD FOREIGN KEY (buddy_engg_id) REFERENCES mentor (id);

create table candidate_stack_assignment (
id int not null primary key auto_increment,
requirement_id int not null,
foreign key (requirement_id) references company (id),
candidate_id int not null,
foreign key (candidate_id) references fellowship_candidate (id),
assign_date datetime not null,
status varchar (10) not null,
creator_stamp datetime not null,
creator_user varchar (50) not null
);

CREATE TABLE `lms`.`temp_user_engagement_mis` (
  `Date_Time` DATETIME NOT NULL,
  `Cpu_Count` INT NOT NULL,
  `Cpu_Working_Time` DOUBLE NOT NULL,
  `Cpu_idle_Time` VARCHAR(45) NOT NULL,
  `cpu_percent` DOUBLE NOT NULL,
  `Usage_Cpu_Count` INT NOT NULL,
  `number_of_software_interrupts_since_boot` VARCHAR(45) NOT NULL,
  `number_of_system_calls_since_boot` INT NOT NULL,
  `number_of_interrupts_since_boot` VARCHAR(45) NOT NULL,
  `cpu_avg_load_over_1_min` DOUBLE NOT NULL,
  `cpu_avg_load_over_5_min` DOUBLE NOT NULL,
  `cpu_avg_load_over_15_min` DOUBLE NOT NULL,
  `system_total_memory` BIGINT(12) NOT NULL,
  `system_used_memory` BIGINT(12) NOT NULL,
  `system_free_memory` BIGINT(13) NOT NULL,
  `system_active_memory` BIGINT(12) NOT NULL,
  `system_inactive_memory` BIGINT(12) NOT NULL,
  `system_buffers_memory` BIGINT(12) NOT NULL,
  `system_cached_memory` BIGINT(12) NOT NULL,
  `system_shared_memory` BIGINT(12) NOT NULL,
  `system_avalible_memory` BIGINT(12) NOT NULL,
  `disk_total_memory` BIGINT(13) NOT NULL,
  `disk_used_memory` BIGINT(13) NOT NULL,
  `disk_free_memory` BIGINT(13) NOT NULL,
  `disk_read_count` BIGINT(7) NOT NULL,
  `disk_write_count` BIGINT(7) NOT NULL,
  `disk_read_bytes` BIGINT(12) NOT NULL,
  `disk_write_bytes` BIGINT(12) NOT NULL,
  `time_spent_reading_from_disk` BIGINT(12) NOT NULL,
  `time_spen_writing_to_disk` BIGINT(10) NOT NULL,
  `time_spent_doing_actual_I/Os` BIGINT(10) NOT NULL,
  `number_of_bytes_sent` BIGINT(10) NOT NULL,
  `number_of_bytes_received` BIGINT(12) NOT NULL,
  `number_of_packets_sent` BIGINT(12) NOT NULL,
  `number_of_packets_recived` BIGINT(7) NOT NULL,
  `total_number_of_errors_while_receiving` INT NOT NULL,
  `total_number_of_errors_while_sending` INT NOT NULL,
  `total_number_of_incoming_packets_which_were_dropped` INT NOT NULL,
  `total_number_of_outgoing_packets_which_were_dropped` INT NOT NULL,
  `boot_time` TIME NOT NULL,
  `user_name` VARCHAR(47) NOT NULL,
  `keyboard` DOUBLE NOT NULL,
  `mouse` DOUBLE NOT NULL,
  `technology` VARCHAR(40) NOT NULL,
  `files_changed` VARCHAR(45) NOT NULL
  );
