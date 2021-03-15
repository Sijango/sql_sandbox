CREATE TABLE teacher
(
	teacher_id serial,
	first_name varchar(32),
	last_name varchar(32),
	birthday date,
	phone varchar(32),
	title varchar
);

ALTER TABLE teacher
ADD COLUMN middle_name varchar(32);

ALTER TABLE teacher
RENAME birthday TO birth_day;

ALTER TABLE teacher
ALTER COLUMN phone
SET DATA TYPE varchar(32);

CREATE TABLE exam
(
	exam_id serial,
	exam_name varchar(256),
	exam_date date
);

INSERT INTO exam (exam_name, exam_date)
VALUES ('Математический анализ', '10-10-2021');

SELECT * FROM exam;

INSERT INTO exam (exam_name, exam_date)
VALUES ('Начертательная геометрия', '28-10-2021');
INSERT INTO exam (exam_name, exam_date)
VALUES ('Программное обеспечение', '30-10-2021');

SELECT * FROM exam;

TRUNCATE TABLE exam;

SELECT * FROM exam;
