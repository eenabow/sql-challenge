-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Departments` (
    `dept_no` VARCHAR  NOT NULL ,
    `dept_name` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `dept_no`
    )
);

CREATE TABLE `Titles` (
    `title_id` VARCHAR  NOT NULL ,
    `title` VARCHAR  NOT NULL ,
    PRIMARY KEY (
        `title_id`
    )
);

CREATE TABLE `Employees` (
    `emp_no` INTEGER  NOT NULL ,
    `emp_title` VARCHAR  NOT NULL ,
    `birth_date` DATE  NOT NULL ,
    `first_name` VARCHAR  NOT NULL ,
    `last_name` VARCHAR  NOT NULL ,
    `sex` VARCHAR  NOT NULL ,
    `hire_date` DATE  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `Department_Employee_no` (
    `dept_no` INTEGER  NOT NULL ,
    `emp_no` INTEGER  NOT NULL ,
    PRIMARY KEY (
        `dept_no`,`emp_no`
    )
);

CREATE TABLE `Department_Manager_no` (
    `dept_no` INTEGER  NOT NULL ,
    `emp_no` INTEGER  NOT NULL ,
    PRIMARY KEY (
        `dept_no`,`emp_no`
    )
);

CREATE TABLE `Salaries` (
    `emp_no` INTEGER  NOT NULL ,
    `salary` INTEGER  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

ALTER TABLE `Employees` ADD CONSTRAINT `fk_Employees_emp_title` FOREIGN KEY(`emp_title`)
REFERENCES `Titles` (`title_id`);

ALTER TABLE `Department_Employee_no` ADD CONSTRAINT `fk_Department_Employee_no_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_no`);

ALTER TABLE `Department_Employee_no` ADD CONSTRAINT `fk_Department_Employee_no_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

ALTER TABLE `Department_Manager_no` ADD CONSTRAINT `fk_Department_Manager_no_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_no`);

ALTER TABLE `Department_Manager_no` ADD CONSTRAINT `fk_Department_Manager_no_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

ALTER TABLE `Salaries` ADD CONSTRAINT `fk_Salaries_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

