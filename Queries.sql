-- 1.find all candidte having java technology--
select * from fellowship_candidate where id IN (select candidate_id from candidate_stack_assignment where requirement_id IN (select id from company_requirement where tech_stack_id=(select id from tech_stack where tech_name="Java")));

-- 2.find all mentors and ideations have java technology-- 
select * from mentor where id IN (select mentor_id from mentor_tech_stack where tech_stack_id IN(select id from tech_stack where tech_name="Java"));

-- 7.find name of candidate which did not assign technology-- 
select * from fellowship_candidate where id NOT IN (select candidate_id from candidate_stack_assignment where requirement_id IN(select id from company_requirement where tech_stack_id IN (select id from tech_stack)));

-- 8- find name of cnadidate which is not submit documents-- 
select * from fellowship_candidate where document_status=0;

-- 9- find name of candidate which is not submit bank details-- 
select * from fellowship_candidate where bank_information="Pending";

-- 10-find name of candidates which is joined in dec month-- 
select * from fellowship_candidate where month(joining_date)=12;

-- 11-find name of candidates which is end of couse in feb-- 
select first_name,last_name from (select id, DATE_ADD(joining_date, INTERVAL 4 MONTH) as month from fellowship_candidate)data where MONTH(month)=2;

-- 13-find all candidates which is passed out in 2019 year-- 
select * from fellowship_candidate where id IN (select candidate_id from candidate_qualification where passing_year=2019);

-- 14-which technology assign to whom candidates which is having MCA background-- 
select tech_name from tech_stack where id IN (select tech_stack_id from company_requirement where id IN(select requirement_id from candidate_tech_stack_assignment where candidate_id IN (select id from fellowship_candidate where degree="MCA")));

-- 15-how many candiates which is having last month-- 
select COUNT(first_name) from fellowship_candidate where MONTH(DATE_SUB(joining_date, INTERVAL 3 MONTH))=4;

-- 16-how many week candidate completed in the bridgelabz since joining date candidate id is 2-- 
select ROUND(DATEDIFF(CURRENT_DATE, joining_date)/7) as weeks from fellowship_candidate where id=2;

-- 17-find joining date of candidate if candidate id is 4-- 
select joining_date from fellowship_candidate where id = 4;

-- 18-how many week remaining of candidate in the bridglabz from today if candidate id is 5-- 
select ROUND(DATEDIFF(month,CURRENT_DATE)/7) from(select DATE_ADD(joining_date, INTERVAL 4 MONTH) as month from fellowship_candidate where id=5)data;

-- 19-how many days remaining of candidate in the bridgelabz from today if candidate is is 6-- 
select DATEDIFF(month,CURRENT_DATE) from(select DATE_ADD(joining_date, INTERVAL 4 MONTH) as month from fellowship_candidate where id=6)data;

-- 20-find candidates which is deployed-- 
select * from fellowship_candidate where id IN (select candidate_id from candidate_stack_assignment);

-- 21-find name and other details and name of company which is assign to condidate.-- 
select * from company where id IN (select requirement_id from candidate_stack_assignment);

-- 22-find all condidate and mentors which is related to lab= banglore.-- 
select first_name from fellowship_candidate where hired_lab = "Banglore" union (select name from mentor where lab_id IN (select id from lab where location = "Banglore"));

-- 22-find all condidate and mentors which is related to lab= mumbai.-- 
select first_name from fellowship_candidate where hired_lab = "Mumbai" union (select name from mentor where lab_id IN (select id from lab where location = "Mumbai"));

-- 22-find all condidate and mentors which is related to lab= pune.-- 
select first_name from fellowship_candidate where hired_lab = "Pune" union (select name from mentor where lab_id IN (select id from lab where location = "Pune"));

-- 23-find buddy mententors and ideation mentor and which technology assign to perticular candidate if candidate id is 5-- 
SELECT fellowship_candidate.first_name,mentor1.name AS ideation,mentor2.name AS buddy,tech_stack.tech_name
FROM fellowship_candidate
JOIN candidate_stack_assignment
ON fellowship_candidate.id = candidate_stack_assignment.candidate_id
JOIN company_requirement
ON company_requirement.id = candidate_stack_assignment.requirement_id
JOIN mentor AS mentor1
ON company_requirement.ideation_engg_id = mentor1.id
JOIN mentor AS mentor2
ON company_requirement.buddy_engg_id = mentor2.id
JOIN tech_stack
ON tech_stack.id = company_requirement.tech_stack_id
WHERE fellowship_candidate.id = 5;

DELIMITER //

CREATE PROCEDURE getAllUserEngagementMIS()
BEGIN
	select * from lms.user_engagement_mis;
END //

DELIMITER ;

call getAllUserEngagementMIS();

DELIMITER //

CREATE PROCEDURE getUserBootTimeNull ()
BEGIN
	select candidate_id from lms.user_engagement_mis where boot_time is null;
END //

DELIMITER ;

call getUserBootTimeNull ();

-- 3 find all candidate which is present today --
DELIMITER //
CREATE PROCEDURE getCandidateWhichIsPresentToday ()
BEGIN
	select * from fellowship_candidate  where id IN (select candidate_id from user_engagement_mis where Date_Time is not null);
END //
DELIMITER ;

call getCandidateWhichIsPresentToday();

-- 4 find all candidate which is come late today --
DELIMITER //
CREATE PROCEDURE getCandidateWhichLateToday ()
BEGIN
	select * from fellowship_candidate where id IN (select candidate_id from user_engagement_mis where time(Date_Time) > '09:00:59');
END //
DELIMITER ;

call getCandidateWhichLateToday ();

-- 6 find all candidate which come early today --
DELIMITER //
CREATE PROCEDURE getCandidateWhichEarlyToday ()
BEGIN
	select * from fellowship_candidate where id IN (select candidate_id from user_engagement_mis where time(Date_time) < '09:00:59');
END //
DELIMITER ;

call getCandidateWhichEarlyToday ();






