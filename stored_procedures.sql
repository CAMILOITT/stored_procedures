CREATE TABLE teddy(
  id serial PRIMARY key,
  name varchar(20) NOT NULL,
  type varchar(29) NOT NULL,
  price NUMERIC(10,2) NOT NULL
);

INSERT INTO teddy(name, TYPE, price) VALUES ('oso', 'peluche', 27.99),('stich', 'peluche', 35),
  ('bebe Yoda', 'peluche', 85),
  ('rick', 'cojin', 17),
  ('patricio Estrella', 'peluche', 6.80);

SELECT * FROM teddy 

CREATE OR REPLACE PROCEDURE discount(
  teddy_id int
)
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE teddy
  SET price = price - (price * 0.1)
  WHERE id = item_id;
  COMMIT;
END;$$

CALL discount (1)

SELECT * FROM teddy


