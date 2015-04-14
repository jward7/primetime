CREATE DATABASE primetime;

\c primetime

CREATE TABLE speeds (
  id BIGSERIAL PRIMARY KEY,
  person VARCHAR(100),
  speed_c BIGINT,
  prime_id BIGINT,
  computer_id BIGINT
);

CREATE TABLE primes (
  id BIGSERIAL PRIMARY KEY,
  prime_c BIGINT,
  prime_text VARCHAR(100),
  type_of VARCHAR(50), /*cannot use type as variable name -changed to type_of*/
  found TIMESTAMP
);

CREATE TABLE computers (
  id BIGSERIAL PRIMARY KEY,
  computer_c VARCHAR(100),
  manufacture_year SMALLINT
);