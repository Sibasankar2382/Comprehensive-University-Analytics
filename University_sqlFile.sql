create database University_Education;


use University_Education;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255),
    department_head varchar(250),
    Location varchar(30),
    established_year int,
	contact_email varchar(250)
);
select * from Departments;
create table departmental_budgets(
budget_id int,
department_id int,
year int,
budget int,
foreign key (department_id) references Departments(department_id)
);
select * from departmental_budgets;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    gender CHAR(1),
    enrollment_date DATE,
    date_of_birth DATE,
    department_id INT,
    City VARCHAR(255),
    previous_exam_board VARCHAR(255),
    game_activity VARCHAR(255),
    foreign key (department_id) references Departments(department_id)
);
select * from Students;
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    gender CHAR(1),
    hire_date DATE,
    department_id INT,
    Position VARCHAR(255),
    Salary INT,
    foreign key (department_id) references Departments(department_id)
);
select * from Faculty;
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    course_description TEXT,
    department_id INT,
    credits INT,
    duration VARCHAR(255),
    semester VARCHAR(255),
    num_semester_exams INT,
    practical BOOLEAN,
    total_practicals INT,
    joining_fees DECIMAL(10, 2),
    foreign key (department_id) references Departments(department_id)
);
select * from Courses;
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    semester VARCHAR(255),
    status VARCHAR(255),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
select * from Enrollments;
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    enrollment_id INT,
    grade CHAR(1),
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id)
);
select * from Grades;

