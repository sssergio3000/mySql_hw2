create DATABASE personnel;

use personnel;

create TABLE positions (
id SMALLINT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL UNIQUE
);

INSERT positions
(name)
VALUES
('CEO'),
('manager'),
('chief'),
('guard');

CREATE TABLE persons (
id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(20) not NULL,
last_name VARCHAR(20) not NULL,
address VARCHAR(50) not null DEFAULT 'temp',
phone_number BIGINT UNSIGNED UNIQUE NOT NULL,
position_id SMALLINT UNSIGNED,
FOREIGN KEY (position_id) REFERENCES positions (id)
);

-- TRUNCATE persons;
INSERT INTO persons
(`first_name`,
`last_name`,
`address`,
`phone_number`,
`position_id`)
VALUES
('Marta',
'Santos',
'address1',
'1111111111',
'1'),
('Victor',
'Johnson',
'address2',
'2222222222',
'3'),
('Max',
'Porter',
'address3',
'3333333333',
'2');


SELECT * from persons;







