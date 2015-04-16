CREATE DATABASE primetime;

\c primetime

CREATE TABLE speeds (
  id BIGSERIAL PRIMARY KEY,
  person VARCHAR(100),
  result BIGINT,
  prime_id BIGINT,
  computer_id BIGINT
);

CREATE TABLE primes (
  id BIGSERIAL PRIMARY KEY,
  num BIGINT,
  txt VARCHAR(100),
  type_of VARCHAR(50), /*cannot use type as variable name -changed to type_of*/
  found TIMESTAMP,
  speed_id BIGINT
);

CREATE TABLE computers (
  id BIGSERIAL PRIMARY KEY,
  make VARCHAR(100),
  manufacture_year SMALLINT,
  speed_id BIGINT
);