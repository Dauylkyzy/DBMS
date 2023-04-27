CREATE OR REPLACE TRIGGER display_row_count
BEFORE INSERT ON Customer
DECLARE
  row_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO row_count FROM Customer;
  DBMS_OUTPUT.PUT_LINE('Current number of rows in Customer table: ' || row_count);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/
