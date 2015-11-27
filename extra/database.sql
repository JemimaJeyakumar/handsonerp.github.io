create database ead;
  
USE ead;

CREATE TABLE salary_Category(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  cat_name varchar(50) NOT NULL,
  basic_sal float NOT NULL,
  ot_h_rate float NOT NULL
  );


CREATE TABLE employee(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fname varchar(50) NOT NULL,
  lname varchar(50) NOT NULL,
  address varchar(100),
  email varchar(100) NOT NULL,
  phone_num char(12) NOT NULL,
  gender enum ('m','f') not NULL,
  joined_date datetime NOT NULL,
  p_pic blob,
  pwd varchar(50) NOT NULL,
  job_title varchar(50),
  role enum('admin','accountant','normal_employess') NOT NULL DEFAULT 'normal_employess',
  employee_type enum('senior_managers','middle_managers','operational_managers','dataworkers','normal_workers'),
  final_sal float not null,
  manager_opinion enum('excellent', 'very_good','good','above_average','average','below_average','disapointing','disaster','not_rated') DEFAULT 'not_rated',
  rating float
  );


CREATE TABLE salary(
  id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  emp_id int NOT NULL,
  sal_cat int NOT NULL,
  paid_date datetime NOT NULL,
  paid_or_not boolean NOT NULL, 
  FOREIGN KEY (emp_id) REFERENCES employee(id),
  FOREIGN KEY (sal_cat) REFERENCES salary_category(id) 
  );


CREATE TABLE OT(
  emp_id int NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES employee(id),
  date_of_ot datetime NOT NULL,
  finish_time timestamp NOT NULL
  );


CREATE TABLE epf(
  emp_id int NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES employee(id),
  epf_per float NOT NULL,
  date_given datetime NOT NULL
  );


CREATE TABLE allowances(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  allowance_name varchar(50) NOT NULL,
  emp_type enum('senior_managers','middle_managers','operational_managers','dataworkers','normal_workers') NOT NULL,
  allowance_amount float,
  allowance_percentage float,
  month_paid date NOT NULL
  );


CREATE TABLE deduction(
  emp_id int NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES employee(id),
  description varchar(300) NOT NULL,
  date_of_occurence datetime NOT NULL,
  amount float,
  salary_percentage_ded float 
  );


CREATE TABLE attendance(
  emp_id int NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES employee(id),
  dates date NOT NULL,
  PRIMARY KEY(emp_id,dates),
  arrived_at timestamp,
  leaved_at timestamp,
  attendance_status enum ('present','absent','half_day') NOT NULL
  );


CREATE TABLE location(
  id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  location_name varchar(50) NOT NULL,
  lattitude float NOT NULL,
  longitude float NOT NULL
  );

CREATE TABLE training(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  date_of datetime NOT NULL,
  location_id int NOT NULL,
  FOREIGN KEY (location_id) REFERENCES location(id),
  trainer_id int NOT NULL,
  FOREIGN KEY (trainer_id) REFERENCES employee(id),
  no_of_people int NOT NULL,
  start_time timestamp,
  end_time timestamp,
  description varchar(300),
  cost float NOT NULL
  );

CREATE TABLE achivements(
  emp_id int NOT NULL,
  FOREIGN KEY (emp_id) REFERENCES employee(id),
  year_achived year NOT NULL,
  description varchar(300) NOT NULL
  );

CREATE TABLE recruitment(
  applicant_id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  applicant_name varchar(50) NOT NULL,
  interviewer_id int NOT NULL,
  FOREIGN KEY (interviewer_id) REFERENCES employee(id),
  email varchar(100) NOT NULL,
  cv blob NOT NULL,
  status_of_application enum('selected','rejected','pending') NOT NULL 
  );

CREATE TABLE customer(
  id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  username varchar(50) NOT NULL,
  pwd varchar(50) NOT NULL,
  p_pic blob,
  points int NOT NULL,
  contact_no varchar(15) NOT NULL,
  email varchar(100) NOT NULL,
  address varchar(100),
  company_name varchar(50),
  contact_person varchar(50) NOT NULL,
  contact_person_title varchar(50)
  );


CREATE TABLE engine_model(
  model_name varchar(10) NOT NULL PRIMARY KEY,
  cc enum('1000 ','1600','2000 ','2500','3000','5000'),
  fuel enum('diesel','patrol','gas'),
  no_of_cylinders enum('1','2','4','8','12'),
  mounttype enum('Hydraulic Mount','Rigid Mount'),
  cost_per_piece float NOT NULL,
  selling_price float NOT NULL,
  allowed_discount float,
  warrenty_distance int,
  warrenty_month int
  );


CREATE TABLE engines_store(
  model_name varchar(10) NOT NULL,
  FOREIGN KEY (model_name) REFERENCES engine_model(model_name),
  available_qty int NOT NULL
  );


CREATE TABLE orders(
  id int AUTO_INCREMENT NOT NULL PRIMARY KEY,
  cus_id int NOT NULL,
  FOREIGN KEY (cus_id) REFERENCES customer(id),
  engine_model varchar(10) NOT NULL,
  FOREIGN KEY (engine_model) REFERENCES engine_model(model_name),
  qty int NOT NULL,
  order_date date NOT NULL,
  delivary_date date NOT NULL,
  delivery_status boolean,
  customer_satisfaction enum('excellent','good','ok','not-bad','dissapointing') 
  );


CREATE TABLE vehicle(
  vehicle_no varchar(15) NOT NULL PRIMARY KEY,
  vehicle_type enum('van','lory'),
  max_qty_pieces int NOT NULL,
  price_per_km float NOT NULL
  );

CREATE TABLE delivery(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  vehicle_no varchar(15) NOT NULL,
  FOREIGN KEY (vehicle_no) REFERENCES vehicle(vehicle_no),
  company_driver int,
  FOREIGN KEY (company_driver) REFERENCES employee(id),
  external_driver_name varchar(50),
  external_driver_phone varchar(20)
  );

CREATE TABLE order_delivery(
  order_id int NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  delivery_id int NOT NULL,
  FOREIGN KEY (delivery_id) REFERENCES delivery(id)
  );

CREATE TABLE customer_comments(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  customer_id int NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  model_name varchar(10) NOT NULL,
  FOREIGN KEY (model_name) REFERENCES engine_model(model_name),
  comm_likes int NOT NULL DEFAULT 0,
  comm_body varchar(10000)
  );


CREATE TABLE sales(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  date_of_sale datetime NOT NULL,
  order_id int NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(id),
  total_payable_left float,
  payment_type enum('cash','cheque'),
  check_no varchar(30),
  sales_payment_status enum('fully_paid','half_paid','pending')
  );

CREATE TABLE debtor(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  customer_id int NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customer(id),
  amount float NOT NULL,
  last_paid_date date,
  delivery_of_good_date date NOT NULL,
  first_paid_date date
  );

CREATE TABLE all_income(
  date_income_received datetime NOT NULL,
  amount_received float NOT NULL,
  sale_id int,
  FOREIGN KEY (sale_id) REFERENCES sales(id),
  debtor_id int,
  FOREIGN KEY (debtor_id) REFERENCES debtor(id)
  );


CREATE TABLE all_expense(
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  date_of_expense datetime NOT NULL,
  amount float NOT NULL,
  description varchar(300) NOT NULL
  );

CREATE TABLE non_current_asset(
  date_purchase date NOT NULL,
  amount float NOT NULL,
  description varchar(300) NOT NULL
  );