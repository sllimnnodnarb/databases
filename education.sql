CREATE TABLE registrations (
  id integer,
  course_number integer,
  course_name text,
  attempt integer,
  student_name text,
  price integer,
  start_date date,
  end_date date
);

INSERT INTO registrations
  VALUES
  (1, 100, 'Bloc', 1, 'Adam Smith', 119, '2017-07-22', '2017-07-23'),
  (2, 105, 'Economics', 2, 'Mike Reed', 119, '2017-07-22', '2017-07-25'),
  (3, 102, 'History', 1, 'Brad Boyd', 119, '2017-07-22', '2017-07-23'),
  (4, 100, 'Economics', 2, 'Clark Smith', 119, '2017-07-24', '2017-07-28'),
  (5, 105, 'P.E.', 1, 'Adam Davis', 119, '2017-07-22', '2017-07-23');

CREATE TABLE courses (
  id integer,
  name text,
  course_number integer,
  capacity integer,
  online char(1),
  price integer,
  credits integer,
  instructor text,
  books text
);

INSERT INTO courses
  VALUES
  (1, 'Math', 100, 20, 'N', 200, 1, 'Smith', 'Add N Stuff'),
  (2, 'Science', 101, 20, 'N', 200, 1, 'Thomas', 'Beakers N Stuff'),
  (3, 'History', 102, 20, 'N', 200, 1, 'Davis', 'Years N Stuff'),
  (4, 'English', 103, 20, 'N', 200, 1, 'Williams', 'Letters N Stuff'),
  (5, 'P.E.', 104, 20, 'N', 200, 1, 'Peters', 'Exercise N Stuff'),
  (6, 'Economics', 105, 20, 'N', 200, 1, 'Hunt', 'Taxation is Theft'),
  (7, 'Bloc', 106, 500, 'Y', 20000, 3, 'Green', 'Code N Stuff');

CREATE TABLE students (
  id integer,
  years_active integer,
  student_name text,
  age integer,
  address text,
  email text,
  credit_card integer,
  on_campus_resident char(1),
  start_date date,
  grad_date date
);

INSERT INTO students
  VALUES
  (1, 1, 'Adam Smith', 19, '1 One Way Onetown TX', '1@1.com', 1111, 'N', '2017-08-22', '2021-05-23'),
  (2, 3, 'Mike Reed', 29, '2 Two Way Twotown TX', '2@2.com', 2222, 'N', '2014-08-22', '2018-05-23'),
  (3, 10, 'Brad Boyd', 39, '3 Three Way Threetown TX', '3@3.com', 3333, 'Y', '2007-08-22', '2011-05-23'),
  (4, 5, 'Clark Smith', 49, '4 Four Way Fourtown TX', '4@4.com', 4444, 'Y', '2012-08-22', '2016-05-23'),
  (5, 2, 'Adam Davis', 59, '5 Five Way Fivetown TX', '5@5.com', 5555, 'Y', '2016-08-22', '2020-05-23');

CREATE TABLE grades (
  id integer,
  student_name text,
  course_name text,
  course_enrolled char(1),
  course_complete char(1),
  course_grade char(1)
);

INSERT INTO grades (
  VALUES
  (1, 'Adam Smith', 'Math', 'Y', 'N', NULL),
  (2, 'Adam Smith', 'Economics', 'Y', 'N', NULL),
  (3, 'Adam Smith', 'Bloc', 'N', 'Y', 'A'),
  (4, 'Mike Reed', 'Economics', 'Y', 'N', NULL),
  (5, 'Brad Boyd', 'P.E.', 'N', 'Y', 'B'),
  (6, 'Brad Boyd', 'Science', 'N', 'Y', 'B'),
  (7, 'Brad Boyd', 'English', 'N', 'Y', 'C'),
  (8, 'Adam Davis', 'Economics', 'N', 'Y', 'A'),
  (9, 'Adam Davis', 'Bloc', 'N', 'Y', 'B'),
  (10, 'Adam Davis', 'History', 'N', 'Y', 'D')
);
