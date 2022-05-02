CREATE OR REPLACE FUNCTION add_mechanic(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50)
)
RETURNS void

AS $$
BEGIN
    INSERT INTO mechanic(first_name, last_name, department)
    VALUES(first_name, last_name, department);
END;
$$
LANGUAGE plpgsql;

SELECT add_mechanic('Kyle', 'Largent', 'Repairs');

