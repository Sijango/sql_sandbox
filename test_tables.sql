DROP TABLE IF EXISTS exam;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS passport;
DROP TABLE IF EXISTS student;

CREATE TABLE exam
(
	exam_id int GENERATED ALWAYS AS IDENTITY NOT NULL,
	exam_name varchar,
	exam_date date,
	
	CONSTRAINT PK_exam_exam_id PRIMARY KEY(exam_id)
);

ALTER TABLE exam
DROP CONSTRAINT PK_exam_exam_id;

ALTER TABLE exam
ADD CONSTRAINT PK_exam_exam_id PRIMARY KEY(exam_id);

CREATE TABLE person
(
	person_id int,
	person_name varchar,
	last_name varchar,
	
	CONSTRAINT PK_person_person_id PRIMARY KEY(person_id)
);

CREATE TABLE passport
(
	passport_id int,
	passport_number int NOT NULL,
	registration text,
	person_id int,
	
	CONSTRAINT PK_passport_passport_id PRIMARY KEY(passport_id),
	CONSTRAINT FK_passport_person_id FOREIGN KEY(person_id) REFERENCES person(person_id)	
);
