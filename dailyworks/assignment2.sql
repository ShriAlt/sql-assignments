create database airlines;
 CREATE TABLE airlines_info (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(50),
    country VARCHAR(50),
    founded_year INT,
    fleet_size INT
);


CREATE TABLE country_info (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    population BIGINT,
    capital VARCHAR(50),
    continent VARCHAR(30)
);


CREATE TABLE state_info (
    state_id INT PRIMARY KEY,
    state_name VARCHAR(50),
    country_name VARCHAR(50),
    population BIGINT,
    area_sq_km FLOAT
);


ALTER TABLE airlines_info ADD headquarters VARCHAR(50);
ALTER TABLE airlines_info ADD ceo_name VARCHAR(50);
ALTER TABLE airlines_info ADD is_international BOOLEAN;


ALTER TABLE country_info ADD language VARCHAR(30);
ALTER TABLE country_info ADD currency VARCHAR(30);
ALTER TABLE country_info ADD independence_year INT;


ALTER TABLE state_info ADD capital_city VARCHAR(50);
ALTER TABLE state_info ADD literacy_rate DECIMAL(5,2);
ALTER TABLE state_info ADD is_tourist_spot BOOLEAN;


ALTER TABLE airlines_info RENAME COLUMN airline_name TO name;
ALTER TABLE airlines_info RENAME COLUMN founded_year TO year_founded;
ALTER TABLE airlines_info RENAME COLUMN fleet_size TO total_fleet;


ALTER TABLE country_info RENAME COLUMN country_name TO name;
ALTER TABLE country_info RENAME COLUMN capital TO capital_city;
ALTER TABLE country_info RENAME COLUMN population TO total_population;


ALTER TABLE state_info RENAME COLUMN state_name TO name;
ALTER TABLE state_info RENAME COLUMN population TO total_population;
ALTER TABLE state_info RENAME COLUMN area_sq_km TO area_km2;

INSERT INTO airlines_info VALUES
(1, 'IndiGo', 'India', 2006, 300, 'Gurgaon', 'Pieter Elbers', TRUE),
(2, 'Air India', 'India', 1932, 120, 'New Delhi', 'Campbell Wilson', TRUE),
(3, 'SpiceJet', 'India', 2005, 90, 'Gurgaon', 'Ajay Singh', TRUE),
(4, 'Go First', 'India', 2005, 60, 'Mumbai', 'Kaushik Khona', TRUE),
(5, 'Vistara', 'India', 2015, 50, 'Gurgaon', 'Vinod Kannan', TRUE),
(6, 'Jet Airways', 'India', 1993, 115, 'Mumbai', 'Sanjiv Kapoor', TRUE),
(7, 'AirAsia India', 'India', 2013, 40, 'Bangalore', 'Sunil Bhaskaran', TRUE),
(8, 'Alliance Air', 'India', 1996, 20, 'Delhi', 'Vineet Sood', FALSE),
(9, 'Akasa Air', 'India', 2021, 15, 'Mumbai', 'Vinay Dube', TRUE),
(10, 'TruJet', 'India', 2014, 10, 'Hyderabad', 'V Umesh', FALSE),
(11, 'Emirates', 'UAE', 1985, 260, 'Dubai', 'Tim Clark', TRUE),
(12, 'Qatar Airways', 'Qatar', 1993, 230, 'Doha', 'Akbar Al Baker', TRUE),
(13, 'Singapore Airlines', 'Singapore', 1947, 130, 'Singapore', 'Goh Choon Phong', TRUE),
(14, 'Lufthansa', 'Germany', 1953, 270, 'Cologne', 'Carsten Spohr', TRUE),
(15, 'British Airways', 'UK', 1974, 280, 'London', 'Sean Doyle', TRUE),
(16, 'Turkish Airlines', 'Turkey', 1933, 350, 'Istanbul', 'Bilal Ekşi', TRUE),
(17, 'Air France', 'France', 1933, 210, 'Paris', 'Anne Rigail', TRUE),
(18, 'KLM', 'Netherlands', 1919, 170, 'Amstelveen', 'Marjan Rintel', TRUE),
(19, 'Delta Airlines', 'USA', 1924, 850, 'Atlanta', 'Ed Bastian', TRUE),
(20, 'American Airlines', 'USA', 1930, 950, 'Texas', 'Robert Isom', TRUE);

INSERT INTO country_info VALUES
(1, 'India', 1393409038, 'New Delhi', 'Asia', 'Hindi', 'INR', 1947),
(2, 'USA', 331000000, 'Washington D.C.', 'North America', 'English', 'USD', 1776),
(3, 'China', 1444216107, 'Beijing', 'Asia', 'Mandarin', 'CNY', 1949),
(4, 'Germany', 83000000, 'Berlin', 'Europe', 'German', 'EUR', 1871),
(5, 'France', 67000000, 'Paris', 'Europe', 'French', 'EUR', 1792),
(6, 'Japan', 125800000, 'Tokyo', 'Asia', 'Japanese', 'JPY', 660),
(7, 'UK', 68000000, 'London', 'Europe', 'English', 'GBP', 1707),
(8, 'Brazil', 212600000, 'Brasília', 'South America', 'Portuguese', 'BRL', 1822),
(9, 'Canada', 38000000, 'Ottawa', 'North America', 'English/French', 'CAD', 1867),
(10, 'Russia', 144000000, 'Moscow', 'Europe/Asia', 'Russian', 'RUB', 1991),
(11, 'Australia', 25000000, 'Canberra', 'Australia', 'English', 'AUD', 1901),
(12, 'Italy', 60000000, 'Rome', 'Europe', 'Italian', 'EUR', 1861),
(13, 'Mexico', 128900000, 'Mexico City', 'North America', 'Spanish', 'MXN', 1821),
(14, 'Indonesia', 273500000, 'Jakarta', 'Asia', 'Indonesian', 'IDR', 1945),
(15, 'South Korea', 51800000, 'Seoul', 'Asia', 'Korean', 'KRW', 1948),
(16, 'Spain', 47000000, 'Madrid', 'Europe', 'Spanish', 'EUR', 1492),
(17, 'Turkey', 84000000, 'Ankara', 'Asia/Europe', 'Turkish', 'TRY', 1923),
(18, 'Netherlands', 17000000, 'Amsterdam', 'Europe', 'Dutch', 'EUR', 1581),
(19, 'UAE', 9800000, 'Abu Dhabi', 'Asia', 'Arabic', 'AED', 1971),
(20, 'Qatar', 2800000, 'Doha', 'Asia', 'Arabic', 'QAR', 1971);

INSERT INTO state_info VALUES
(1, 'Karnataka', 'India', 61095297, 191791, 'Bengaluru', 75.36, TRUE),
(2, 'California', 'USA', 39538223, 423967, 'Sacramento', 81.5, TRUE),
(3, 'Texas', 'USA', 29145505, 695662, 'Austin', 80.3, TRUE),
(4, 'Maharashtra', 'India', 112374333, 307713, 'Mumbai', 82.3, TRUE),
(5, 'Bavaria', 'Germany', 13124737, 70550, 'Munich', 99.2, TRUE),
(6, 'Queensland', 'Australia', 5184847, 1852642, 'Brisbane', 86.1, TRUE),
(7, 'Ontario', 'Canada', 14711827, 1076395, 'Toronto', 89.6, TRUE),
(8, 'São Paulo', 'Brazil', 45919049, 248222, 'São Paulo', 92.5, TRUE),
(9, 'Istanbul', 'Turkey', 15519267, 5461, 'Istanbul', 97.1, TRUE),
(10, 'Jakarta', 'Indonesia', 10770487, 664.01, 'Jakarta', 93.2, TRUE),
(11, 'Quebec', 'Canada', 8537674, 1542056, 'Quebec City', 87.4, TRUE),
(12, 'Madrid', 'Spain', 6661949, 8028, 'Madrid', 98.0, TRUE),
(13, 'Tokyo', 'Japan', 13929286, 2194, 'Tokyo', 99.5, TRUE),
(14, 'New York', 'USA', 20201249, 141297, 'Albany', 82.7, TRUE),
(15, 'Delhi', 'India', 16787941, 1484, 'New Delhi', 88.7, TRUE),
(16, 'Hessen', 'Germany', 6265809, 21115, 'Wiesbaden', 97.8, TRUE),
(17, 'Bali', 'Indonesia', 4230053, 5780, 'Denpasar', 90.6, TRUE),
(18, 'Wales', 'UK', 3152879, 20779, 'Cardiff', 98.4, TRUE),
(19, 'Tuscany', 'Italy', 3729641, 22987, 'Florence', 97.9, TRUE),
(20, 'Doha', 'Qatar', 956457, 1320, 'Doha', 99.0, TRUE);


SELECT * FROM airlines_info;


SELECT * FROM country_info;


SELECT * FROM state_info;


