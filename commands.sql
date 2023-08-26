CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(255) NOT NULL
);


CREATE TABLE people (
    dir_tel VARCHAR(20) PRIMARY KEY,
    dir_type_tel VARCHAR(20),
    dir_name VARCHAR(255) NOT NULL,
    dir_address VARCHAR(255) NOT NULL,
    dir_city_id INT,
    FOREIGN KEY (dir_city_id) REFERENCES cities(city_id)
);


INSERT INTO cities (city_name) VALUES ('Ciudad A');
INSERT INTO cities (city_name) VALUES ('Ciudad B');
INSERT INTO cities (city_name) VALUES ('Ciudad C');
INSERT INTO cities (city_name) VALUES ('Ciudad D');
INSERT INTO cities (city_name) VALUES ('Ciudad E');

INSERT INTO people (dir_tel, dir_type_tel, dir_name, dir_address, dir_city_id) VALUES ('123456789', 'Casa', 'Persona 1', 'Dirección 1', 1);
INSERT INTO people (dir_tel, dir_type_tel, dir_name, dir_address, dir_city_id) VALUES ('987654321', 'Trabajo', 'Persona 2', 'Dirección 2', 2);
INSERT INTO people (dir_tel, dir_type_tel, dir_name, dir_address, dir_city_id) VALUES ('555555555', 'Casa', 'Persona 3', 'Dirección 3', 3);
INSERT INTO people (dir_tel, dir_type_tel, dir_name, dir_address, dir_city_id) VALUES ('111111111', 'Trabajo', 'Persona 4', 'Dirección 4', 4);
INSERT INTO people (dir_tel, dir_type_tel, dir_name, dir_address, dir_city_id) VALUES ('999999999', 'Casa', 'Persona 5', 'Dirección 5', 5);
