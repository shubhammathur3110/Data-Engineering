CREATE TABLE shubham.regions
   ( region_id INTEGER 
   , region_name VARCHAR(25) 
   );
CREATE UNIQUE INDEX reg_id_pk
         ON shubham.regions (region_id);
ALTER TABLE shubham.regions ADD
   PRIMARY KEY (region_id)
   ;
       
CREATE TABLE shubham.countries
   ( country_id CHAR(2) 
   , country_name VARCHAR(40) 
   , region_id INTEGER  
   ); 
ALTER TABLE shubham.countries ADD CONSTRAINT country_c_id_pk
   PRIMARY KEY (country_id);
ALTER TABLE shubham.countries ADD
   FOREIGN KEY (region_id)
   REFERENCES shubham.regions(region_id)
   ;

CREATE TABLE shubham.locations
   ( location_id INTEGER
   , street_address VARCHAR(40)
   , postal_code VARCHAR(12)
   , city VARCHAR(30)
   , state_province VARCHAR(25)
   , country_id CHAR(2)
   ) ;
CREATE UNIQUE INDEX loc_id_pk
         ON shubham.locations (location_id) ;
ALTER TABLE shubham.locations ADD
	PRIMARY KEY (location_id);
ALTER TABLE shubham.locations ADD
   	FOREIGN KEY (country_id)
   	REFERENCES shubham.countries(country_id);
       
CREATE TABLE shubham.departments
   ( department_id INTEGER
   , department_name VARCHAR(30)
   , manager_id INTEGER
   , location_id INTEGER
   ) ;

CREATE UNIQUE INDEX dept_id_pk
         ON shubham.departments (department_id) ;

ALTER TABLE shubham.departments ADD
	PRIMARY KEY (department_id);
ALTER TABLE shubham.departments ADD
   FOREIGN KEY (location_id)
   REFERENCES shubham.locations (location_id);

CREATE TABLE shubham.jobs
   ( job_id VARCHAR(10)
   , job_title VARCHAR(35)
   , min_salary INTEGER
   , max_salary INTEGER
   ) ;
CREATE UNIQUE INDEX job_id_pk 
         ON shubham.jobs (job_id) ;
ALTER TABLE shubham.jobs ADD
   PRIMARY KEY(job_id);
       
CREATE TABLE shubham.employees
   ( employee_id INTEGER
   , first_name VARCHAR(20)
   , last_name VARCHAR(25)
   , email VARCHAR(25)
   , phone_number VARCHAR(20)
   , hire_date DATE
   , job_id VARCHAR(10)
   , salary NUMERIC(8,2)
   , commission_pct NUMERIC(2,2)
   , manager_id INTEGER
   , department_id INTEGER
   ) ;
CREATE UNIQUE INDEX emp_emp_id_pk
         ON shubham.employees (employee_id) ;
ALTER TABLE shubham.employees ADD
   PRIMARY KEY (employee_id);
ALTER TABLE shubham.employees ADD
   FOREIGN KEY (job_id)
   REFERENCES shubham.jobs (job_id);
ALTER TABLE shubham.employees ADD
   FOREIGN KEY (department_id)
   REFERENCES shubham.departments (department_id);
       
       
CREATE TABLE shubham.job_history
   ( employee_id INTEGER
   , start_date DATE
   , end_date DATE
   , job_id VARCHAR(10)
   , department_id INTEGER
   ) ;
CREATE UNIQUE INDEX jhist_emp_id_st_date_pk 
         ON shubham.job_history (employee_id, start_date) ;
ALTER TABLE shubham.job_history ADD
   PRIMARY KEY (employee_id, start_date);
ALTER TABLE shubham.job_history ADD
   FOREIGN KEY (job_id)
   REFERENCES shubham.jobs (job_id);
ALTER TABLE shubham.job_history ADD
   FOREIGN KEY (employee_id)
   REFERENCES shubham.employees (employee_id);
ALTER TABLE shubham.job_history ADD
   FOREIGN KEY (department_id)
   REFERENCES shubham.departments (department_id);
       
CREATE OR REPLACE VIEW shubham.emp_details_view
   (employee_id,
   job_id,
   manager_id,
   department_id,
   location_id,
   country_id,
   first_name,
   last_name,
   salary,
   commission_pct,
   department_name,
   job_title,
   city,
   state_province,
   country_name,
   region_name)
   AS SELECT
   e.employee_id, 
   e.job_id, 
   e.manager_id, 
   e.department_id,
   d.location_id,
   l.country_id,
   e.first_name,
   e.last_name,
   e.salary,
   e.commission_pct,
   d.department_name,
   j.job_title,
   l.city,
   l.state_province,
   c.country_name,
   r.region_name
   FROM
   shubham.employees e,
   shubham.departments d,
   shubham.jobs j,
  shubham.locations l,
   shubham.countries c,
   shubham.regions r
   WHERE e.department_id = d.department_id
   AND d.location_id = l.location_id
   AND l.country_id = c.country_id
   AND c.region_id = r.region_id
   AND j.job_id = e.job_id;

CREATE INDEX emp_department_ix
   ON shubham.employees (department_id);
CREATE INDEX emp_job_ix
   ON shubham.employees (job_id);
CREATE INDEX emp_manager_ix
   ON shubham.employees (manager_id);
CREATE INDEX emp_name_ix
   ON shubham.employees (last_name, first_name);
CREATE INDEX dept_location_ix
   ON shubham.departments (location_id);
CREATE INDEX jhist_job_ix
   ON shubham.job_history (job_id);
CREATE INDEX jhist_employee_ix
   ON shubham.job_history (employee_id);
CREATE INDEX jhist_department_ix
   ON shubham.job_history (department_id);
CREATE INDEX loc_city_ix
   ON shubham.locations (city);
CREATE INDEX loc_state_province_ix
   ON shubham.locations (state_province);
CREATE INDEX loc_country_ix
   ON shubham.locations (country_id);

ALTER TABLE shubham.departments ADD
   FOREIGN KEY (manager_id)
   REFERENCES shubham.employees (employee_id);
