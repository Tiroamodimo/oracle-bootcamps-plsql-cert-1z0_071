INFORMATION employees;

INFO departments;

INFO+ employees;

select 'I''m the man';

DECLARE
  category VARCHAR2(20);
BEGIN
  category := 'Electronics';
  -- This will throw an error because 'Category' needs escaping
  SELECT * FROM Products WHERE Category = '' || category || '';
END;

DECLARE
  category VARCHAR2(20);
BEGIN
  category := 'Electronics';
  -- Now category is embedded within the q'' string without escaping issues
  SELECT * FROM Products WHERE Category = q'{category}';
END;