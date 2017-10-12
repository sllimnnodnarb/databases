CREATE TABLE bookings (
  id integer,
  room_number integer,
  keys_issued integer,
  guest_name text,
  price integer,
  check_in_date date,
  check_out_date date
);

INSERT INTO bookings
  VALUES
  (1, 100, 1, 'Adam Smith', 119, '2017-07-22', '2017-07-23'),
  (2, 101, 2, 'Mike Reed', 119, '2017-07-22', '2017-07-25'),
  (3, 102, 1, 'Brad Boyd', 119, '2017-07-22', '2017-07-23'),
  (4, 100, 2, 'Clark Smith', 119, '2017-07-24', '2017-07-28');

CREATE TABLE rooms (
  id integer,
  room_number integer,
  beds integer,
  baths integer,
  ada_access char(1),
  floor_number integer,
  price integer,
  operational char(1),
  damaged char(1),
  damaged_date date,
  check_in_date date,
  check_out_date date,
  guest_name text,
  cleaned char(1)
);

INSERT INTO rooms
  VALUES
  (1, 100, 2, 1, 'Y', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y'),
  (2, 101, 2, 1, 'N', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y'),
  (3, 102, 3, 1, 'N', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y'),
  (4, 103, 3, 2, 'N', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y'),
  (5, 104, 2, 1, 'Y', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y'),
  (6, 105, 2, 1, 'N', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y'),
  (7, 106, 3, 1, 'N', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y'),
  (8, 107, 3, 2, 'N', 1, 119, 'Y', 'N', NULL, NULL, NULL, NULL, 'Y');

CREATE TABLE guests (
  id integer,
  room_number integer,
  guest_name text,
  age integer,
  address text,
  email text,
  credit_card integer,
  rewards_member char(1),
  check_in_date date,
  check_out_date date
);

INSERT INTO guests
  VALUES
  (1, 100, 'Adam Smith', 19, '1 One Way Onetown TX', '1@1.com', 1111, 'N', '2017-07-22', '2017-07-23'),
  (2, 101, 'Mike Reed', 29, '2 Two Way Twotown TX', '2@2.com', 2222, 'N', '2017-07-22', '2017-07-25'),
  (3, 102, 'Brad Boyd', 39, '3 Three Way Threetown TX', '3@3.com', 3333, 'Y', '2017-07-22', '2017-07-23'),
  (4, 100, 'Clark Smith', 49, '4 Four Way Fourtown TX', '4@4.com', 4444, 'Y', '2017-07-24', '2017-07-28'),
  (5, 103, 'Adam Davis', 59, '5 Five Way Fivetown TX', '5@5.com', 5555, 'Y', NULL, NULL);
