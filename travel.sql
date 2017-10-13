CREATE TABLE airplanes (
  model text,
  seat_capacity integer,
  range integer
);

INSERT INTO airplanes VALUES
  ('A380', 345, 5000),
  ('A319', 300, 3000),
  ('B747', 375, 5000),
  ('B787', 500, 7000),
  ('L75', 8, 5000);

CREATE TABLE flights (
  origin text,
  destination text,
  flight_number integer,
  company text,
  distance integer,
  flight_time integer,
  airplane_model text
);

INSERT INTO flights VALUES
  ('San Antonio', 'Dallas', 1211, 'Southworst', 345, 82, 'B747'),
  ('Houston', 'Auckland', 2551, 'Contemplative', 3740, 721, 'B787'),
  ('San Antonio', 'Stephenville', 9000, 'Mills Inc.', 200, 22, 'L75'),
  ('San Antonio', 'Los Angeles', 3218, 'Uknighted', 1255, 184, 'A319');

CREATE TABLE transactions (
  id integer,
  seats_sold integer,
  total_revenue integer,
  total_cost integer,
  flight_number integer,
  flight_date date
);

INSERT INTO transactions VALUES
  (1, 302, 90600, 30200, 1211, '2017-10-01'),
  (2, 489, 342300, 51345, 2551, '2017-10-07'),
  (3, 8, 0, 0, 9000, '2017-10-12'),
  (4, 277, 69250, 20775, 3218, '2017-10-01');
