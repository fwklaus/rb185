DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses(
  id serial PRIMARY KEY,
  amount numeric(6, 2) NOT NULL,
  memo text NOT NULL,
  created_on date NOT NULL
);

ALTER TABLE expenses ADD CHECK(amount BETWEEN 0.01 AND 9999.99);

