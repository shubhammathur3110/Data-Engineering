-- in this we need to  delete the draft rows because we do not have the datae for that and so that we need to create a new insert statement for that 
-- which will not hold the course published data 
-- we insert data into chuncks because we need to make the database as per the instructions and as per the teacher's datbase to validate the answers

Insert into shubham.courses 
(
     course_name,
     course_author,
     course_status,
     course_published_dt
)
values 
('Programming using Python','Bob Dillon', 'published','2020-09-30'),
('Data Engineering using Python', 'Bob Dillon', ' published','2020-07-15');

insert into shubham.courses 
(
     course_name,
     course_author,
     course_status
)
values
('Data Engineering using Scala','Elvis Presley', 'draft');

Insert into shubham.courses 
(
     course_name,
     course_author,
     course_status,
     course_published_dt
)
values 
('Programming using Scala', 'Elvis Presley','published','2020-05-12'),
('Programming using Java', 'Mike Jack','inactive','2020-08-10'),
('Web Application - Python Flask','Bob Dillon','inactive', '2020-07-20');

insert into shubham.courses 
(
     course_name,
     course_author,
     course_status
)
VALUES
('Web Application - Java Spring', 'Mike Jack', 'draft'),
('Pipeline Orchestration - Python', 'Bob Dillon','draft');

Insert into shubham.courses 
(
     course_name,
     course_author,
     course_status,
     course_published_dt
)
values 
('Streaming Pipelines - Python','Bob Dillon','published','2020-10-05'),
('Web Applications - Scala Play', 'Elvis Presley', 'inactive','2020-09-30'),
('Web Applications - Python Diango', 'Bob Dillon', 'published','2020-06-23'),
('Server Automation - Ansible', 'Uncle Sam', 'published', '2020-07-05');


