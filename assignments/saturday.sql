CREATE TABLE student_info (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    contact_number VARCHAR(15),
    city VARCHAR(50)
);
CREATE TABLE course_info (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department VARCHAR(50),
    duration_months INT,
    fee DECIMAL(10,2),
    instructor_name VARCHAR(100),
    start_date DATE,
    mode VARCHAR(20)
);
CREATE TABLE exam_results (
    result_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    subject VARCHAR(50),
    marks_obtained INT,
    total_marks INT,
    exam_date DATE,
    result_status VARCHAR(20)
);
INSERT INTO student_info VALUES
(1, 'Ravi', 'Kumar', 22, 'Male', 'ravi@example.com', '9876543210', 'Bangalore'),
(2, 'Sneha', 'Sharma', 21, 'Female', 'sneha@example.com', '9123456780', 'Mysore'),
(3, 'Ajay', 'Verma', 23, 'Male', 'ajay@example.com', '9012345678', 'Hubli'),
(4, 'Anita', 'Patil', 20, 'Female', 'anita@example.com', '9988776655', 'Mangalore'),
(5, 'Karan', 'Joshi', 24, 'Male', 'karan@example.com', '8877665544', 'Shimoga'),
(6, 'Divya', 'Rao', 22, 'Female', 'divya@example.com', '7890123456', 'Udupi'),
(7, 'Vikram', 'Shetty', 23, 'Male', 'vikram@example.com', '8765432109', 'Dharwad'),
(8, 'Neha', 'Desai', 21, 'Female', 'neha@example.com', '7654321098', 'Tumkur'),
(9, 'Arjun', 'Naik', 25, 'Male', 'arjun@example.com', '6543210987', 'Belgaum'),
(10, 'Priya', 'Kulkarni', 22, 'Female', 'priya@example.com', '5432109876', 'Davangere'),
(11, 'Suresh', 'Mali', 22, 'Male', 'suresh@example.com', '9301122334', 'Bijapur'),
(12, 'Radha', 'Pai', 20, 'Female', 'radha@example.com', '9212233445', 'Karwar'),
(13, 'Ramesh', 'Pillai', 24, 'Male', 'ramesh@example.com', '9323344556', 'Kundapur'),
(14, 'Aishwarya', 'Bhat', 22, 'Female', 'aishwarya@example.com', '9434455667', 'Udupi'),
(15, 'Harsha', 'K M', 23, 'Male', 'harsha@example.com', '9545566778', 'Shivamogga'),
(16, 'Snehal', 'Shinde', 21, 'Female', 'snehal@example.com', '9656677889', 'Bidar'),
(17, 'Manoj', 'Kamath', 24, 'Male', 'manoj@example.com', '9767788990', 'Gulbarga'),
(18, 'Meena', 'Deshpande', 22, 'Female', 'meena@example.com', '9878899001', 'Chikmagalur'),
(19, 'Nikhil', 'Patil', 23, 'Male', 'nikhil@example.com', '9989900112', 'Raichur'),
(20, 'Pooja', 'Jadhav', 21, 'Female', 'pooja@example.com', '9091011123', 'Hassan');

INSERT INTO course_info VALUES
(101, 'Java Basics', 'Computer Science', 3, 5000.00, 'Dr. Suresh', '2024-01-15', 'Offline'),
(102, 'Python Programming', 'Computer Science', 4, 6000.00, 'Mr. Ravi', '2024-02-10', 'Online'),
(103, 'Data Structures', 'Computer Science', 3, 5500.00, 'Ms. Sneha', '2024-01-20', 'Offline'),
(104, 'Web Development', 'IT', 5, 7000.00, 'Mr. Arjun', '2024-03-01', 'Online'),
(105, 'SQL & Databases', 'IT', 2, 4000.00, 'Ms. Divya', '2024-02-01', 'Offline'),
(106, 'Android Development', 'Computer Science', 4, 8000.00, 'Mr. Harsha', '2024-02-15', 'Online'),
(107, 'Machine Learning', 'AI', 6, 12000.00, 'Dr. Meena', '2024-03-10', 'Online'),
(108, 'Cyber Security', 'IT', 3, 9000.00, 'Mr. Vikram', '2024-01-25', 'Offline'),
(109, 'Cloud Computing', 'IT', 5, 10000.00, 'Dr. Radha', '2024-03-20', 'Online'),
(110, 'DevOps', 'IT', 4, 8500.00, 'Ms. Priya', '2024-04-01', 'Online'),
(111, 'C Programming', 'Computer Science', 3, 5000.00, 'Mr. Manoj', '2024-01-05', 'Offline'),
(112, 'C++ Programming', 'Computer Science', 3, 5200.00, 'Mr. Ramesh', '2024-02-05', 'Offline'),
(113, 'Data Science', 'AI', 6, 15000.00, 'Dr. Aishwarya', '2024-03-05', 'Online'),
(114, 'AI Fundamentals', 'AI', 4, 11000.00, 'Dr. Karan', '2024-02-25', 'Online'),
(115, 'UI/UX Design', 'Design', 4, 6500.00, 'Ms. Anita', '2024-03-15', 'Offline'),
(116, 'Operating Systems', 'Computer Science', 3, 4800.00, 'Ms. Snehal', '2024-04-10', 'Offline'),
(117, 'Networking Basics', 'IT', 3, 5300.00, 'Mr. Nikhil', '2024-03-25', 'Online'),
(118, 'Blockchain Basics', 'IT', 4, 9200.00, 'Dr. Aditi', '2024-04-05', 'Online'),
(119, 'Big Data', 'Data Science', 5, 13000.00, 'Mr. Ajay', '2024-03-30', 'Online'),
(120, 'Software Testing', 'IT', 2, 3900.00, 'Ms. Pooja', '2024-02-18', 'Offline');

INSERT INTO exam_results VALUES
(1, 1, 101, 'Java', 85, 100, '2024-04-10', 'Pass'),
(2, 2, 102, 'Python', 90, 100, '2024-04-11', 'Pass'),
(3, 3, 103, 'DSA', 78, 100, '2024-04-12', 'Pass'),
(4, 4, 104, 'HTML', 65, 100, '2024-04-13', 'Pass'),
(5, 5, 105, 'SQL', 88, 100, '2024-04-14', 'Pass'),
(6, 6, 106, 'Android', 76, 100, '2024-04-15', 'Pass'),
(7, 7, 107, 'ML', 82, 100, '2024-04-16', 'Pass'),
(8, 8, 108, 'Security', 69, 100, '2024-04-17', 'Pass'),
(9, 9, 109, 'Cloud', 92, 100, '2024-04-18', 'Pass'),
(10, 10, 110, 'DevOps', 84, 100, '2024-04-19', 'Pass'),
(11, 11, 111, 'C', 87, 100, '2024-04-20', 'Pass'),
(12, 12, 112, 'C++', 77, 100, '2024-04-21', 'Pass'),
(13, 13, 113, 'DS', 93, 100, '2024-04-22', 'Pass'),
(14, 14, 114, 'AI', 89, 100, '2024-04-23', 'Pass'),
(15, 15, 115, 'UX', 70, 100, '2024-04-24', 'Pass'),
(16, 16, 116, 'OS', 79, 100, '2024-04-25', 'Pass'),
(17, 17, 117, 'Networking', 80, 100, '2024-04-26', 'Pass'),
(18, 18, 118, 'Blockchain', 86, 100, '2024-04-27', 'Pass'),
(19, 19, 119, 'BigData', 91, 100, '2024-04-28', 'Pass'),
(20, 20, 120, 'Testing', 73, 100, '2024-04-29', 'Pass');

DESCRIBE student_info;



UPDATE student_info SET first_name = 'Rahul' WHERE student_id = 1;

UPDATE student_info SET last_name = 'Shetty' WHERE student_id = 2;

UPDATE student_info SET age = 22 WHERE student_id = 3;

UPDATE student_info SET gender = 'Female' WHERE student_id = 4;

UPDATE student_info SET email = 'rahul.shetty@example.com' WHERE student_id = 5;

UPDATE student_info SET contact_number = '9876543210' WHERE student_id = 6;

UPDATE student_info SET city = 'Mysore' WHERE student_id = 7;

UPDATE student_info SET first_name = 'Sneha', last_name = 'Rao' WHERE student_id = 8;

UPDATE student_info SET age = 23, city = 'Hubli' WHERE student_id = 9;

UPDATE student_info SET email = 'sneha.rao@example.com', contact_number = '9988776655' WHERE student_id = 10;

DESCRIBE course_info;

UPDATE course_info SET fee = 5500.00 WHERE course_id = 101;
UPDATE course_info SET mode = 'Offline' WHERE course_id = 102;
UPDATE course_info SET instructor_name = 'Dr. Neha' WHERE course_id = 103;
UPDATE course_info SET duration_months = 6 WHERE course_id = 104;
UPDATE course_info SET course_name = 'Advanced Android' WHERE course_id = 106;
UPDATE course_info SET start_date = '2024-05-01' WHERE course_id = 107;
UPDATE course_info SET mode = 'Hybrid' WHERE course_id = 108;
UPDATE course_info SET fee = 7500.00 WHERE course_id = 109;
UPDATE course_info SET course_name = 'Advanced DevOps' WHERE course_id = 110;

describe exam_results;
UPDATE exam_results SET marks_obtained = 88 WHERE result_id = 1;
UPDATE exam_results SET result_status = 'Fail' WHERE result_id = 2;
UPDATE exam_results SET subject = 'Advanced DSA' WHERE result_id = 3;
UPDATE exam_results SET exam_date = '2024-05-05' WHERE result_id = 4;
UPDATE exam_results SET total_marks = 120 WHERE result_id = 5;
UPDATE exam_results SET marks_obtained = 95 WHERE result_id = 6;
UPDATE exam_results SET result_status = 'Pass' WHERE result_id = 7;
UPDATE exam_results SET subject = 'Ethical Hacking' WHERE result_id = 8;
UPDATE exam_results SET marks_obtained = 78 WHERE result_id = 9;
UPDATE exam_results SET total_marks = 90 WHERE result_id = 10;



DELETE FROM student_info WHERE student_id = 1;
DELETE FROM course_info WHERE course_id = 101 AND fee < 6000.00;
DELETE FROM exam_results WHERE marks_obtained < 75 OR result_status = 'Fail';
DELETE FROM student_info WHERE student_id IN (1, 2, 3, 4);
DELETE FROM student_info WHERE student_id NOT IN (5, 6, 7);
DELETE FROM course_info WHERE fee BETWEEN 5000.00 AND 6000.00;
DELETE FROM exam_results WHERE marks_obtained NOT BETWEEN 80 AND 90;


SELECT * FROM student_info WHERE age > 22;


SELECT * FROM course_info WHERE fee < 7000.00;


SELECT * FROM exam_results WHERE marks_obtained > 80;


SELECT * FROM student_info WHERE age > 22 AND city = 'Bangalore';

SELECT * FROM course_info WHERE (fee BETWEEN 5000.00 AND 7000.00) OR mode = 'Offline';

SELECT * FROM exam_results WHERE result_status = 'Pass' AND marks_obtained IN (80, 85, 90);

SELECT * FROM student_info WHERE student_id NOT IN (1, 2, 3, 4);

SELECT * FROM course_info WHERE fee NOT BETWEEN 5000.00 AND 6000.00;

SELECT * FROM exam_results WHERE exam_date BETWEEN '2024-04-10' AND '2024-04-20';



UPDATE student_info SET city = 'Mumbai' WHERE age > 22 AND city = 'Bangalore';

UPDATE course_info SET fee = 5800.00 WHERE (fee BETWEEN 5000.00 AND 6000.00) OR course_name = 'Java Basics';

UPDATE exam_results SET result_status = 'Pass' WHERE result_status = 'Fail' AND marks_obtained IN (50, 60, 70);

UPDATE student_info SET contact_number = '1234567890' WHERE student_id NOT IN (1, 2, 3, 4);

UPDATE course_info SET course_name = 'Intro to Programming' WHERE fee NOT BETWEEN 5000.00 AND 6000.00;

UPDATE exam_results SET marks_obtained = 95 WHERE exam_date BETWEEN '2024-04-10' AND '2024-04-20';




select count(*) from student_info;

select sum(fee) as total_sum from course_info;

select first_name,max(age) as max_age from student_info;

select last_name,min(age) as min_age from student_info;

select avg(marks_obtained) as avg_marks from exam_results;
