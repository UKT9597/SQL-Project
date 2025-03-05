CREATE TABLE employees
 (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    department_id NUMBER,
    salary NUMBER(10,2)
);

CREATE TABLE departments
 (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100)
);

---------------------------------------
INSERT INTO departments VALUES (1, 'IT');
INSERT INTO departments VALUES (2, 'HR');

INSERT INTO employees VALUES (101, 'Rajesh', 'Pandi', 1, 60000);
INSERT INTO employees VALUES (102, 'John', 'Doe', 2, 50000);

-----------------------------------------

CREATE OR REPLACE PROCEDURE get_employee_details (p_emp_id NUMBER) 
IS
    v_name VARCHAR2(100);
    v_salary NUMBER;
BEGIN
    SELECT first_name || ' ' || last_name, salary
    INTO v_name, v_salary
    FROM employees
    WHERE employee_id = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/
