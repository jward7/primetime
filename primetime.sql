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
  type VARCHAR(50),
  found TIMESTAMP
);

CREATE TABLE computers (
  id BIGSERIAL PRIMARY KEY,
  computer_c VARCHAR(100),
  manufacture_year SMALLINT
);