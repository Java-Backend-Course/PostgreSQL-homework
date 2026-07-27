-- 1
CREATE DATABASE "SchoolDB";

-- 2
CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	dob DATE NOT NULL
);

CREATE TABLE courses (
	course_id SERIAL PRIMARY KEY,
	course_name VARCHAR(255) NOT NULL,
	credits INT CHECK (credits >= 0)
);

CREATE TABLE enrollments (
	enrollment_id SERIAL PRIMARY KEY,
	student_id INT NOT NULL,
	course_id INT NOT NULL,
	grade VARCHAR(3)
);

-- 3
ALTER TABLE enrollments
	ADD CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
	ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id);
ALTER TABLE enrollments ADD CONSTRAINT check_grade CHECK (grade IN ('A', 'B', 'C', 'D', 'F'));