CREATE DATABASE SHOP;

USE SHOP; 

CREATE TABLE SHP (
		id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
		Name VARCHAR(250),
		Class VARCHAR(250),
		Age INT,
        Salary INT
	);


SELECT * FROM SHP;

DROP TABLE SHP;
INSERT INTO SHP value(NULL,"YOUSUF","SQL",20,"20000000.00");
INSERT INTO SHP value(NULL,"MUNEEB HASSAN","SQL",17,"30000000.00");
INSERT INTO SHP value(NULL,"MALAIKA","SQL",17,"40000000.00");
INSERT INTO SHP value(NULL,"LAMIA SIDDQUI","SQL",19,"250000000.00");
INSERT INTO SHP value(NULL,"ROMAN KHAN","SQL",21,"60000000.00");
INSERT INTO SHP value(NULL,"SAAD AHMED","SQL",20,"50000000.00");
INSERT INTO SHP value(NULL,"YANISH FIDA","SQL",21,"90000000.00");
INSERT INTO SHP value(NULL,"MARIA HASSAN","SQL",21,"40000000.00");
INSERT INTO SHP value(NULL,"ROHAN HASSAN","SQL",12,"460000000.00");
INSERT INTO SHP value(NULL,"AYSHA KAMRAN","SQL",18,"90000000.00");


/* (1) AGGREGATE FUNCTIONS */
-- TO PERFORM SUM FUNCTION
SELECT SUM(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH ALIAS (AS)
SELECT SUM(SALARY) AS "Employees Salaries" FROM SHP;
-- TO PERFORM FUNCTION WITH SPECIFIC COLUMNS
SELECT NAME,SALARY,SUM(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH ALL COLUMNS    
SELECT *, SUM(SALARY) FROM SHP;

-- TO PERFORM COUNT FUNCTION
SELECT COUNT(SALARY) FROM SHP; 
-- TO PERFORM FUNCTION WITH ALIAS (AS)
SELECT COUNT(SALARY) AS "Employees Salaries" FROM SHP;
-- TO PERFORM FUNCTION WITH SPECIFIC COLUMNS
SELECT NAME,SALARY,COUNT(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH ALL COLUMNS    
SELECT *, COUNT(SALARY) FROM SHP WHERE ID=2;

-- TO PERFORM AVG FUNCTION
SELECT AVG(SALARY) FROM SHP; 
-- TO PERFORM FUNCTION WITH ALIAS (AS)
SELECT AVG(SALARY) AS "Employees Salaries" FROM SHP;
-- TO PERFORM FUNCTION WITH SPECIFIC COLUMNS
SELECT NAME,SALARY,AVG(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH ALL COLUMNS    
SELECT *, AVG(SALARY) FROM SHP WHERE ID=3;


-- TO PERFORM MAX FUNCTION
SELECT MAX(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH ALIAS (AS)
SELECT MAX(SALARY) AS "Employees Salaries" FROM SHP;
-- TO PERFORM FUNCTION WITH SPECIFIC COLUMNS
SELECT NAME,SALARY , MAX(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH ALL COLUMNS    
SELECT *, MAX(SALARY) FROM SHP;

-- TO PERFORM MIN FUNCTION
SELECT MIN(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH ALIAS (AS)
SELECT NAME ,SUM(SALARY) AS "Employees Salaries" FROM SHP WHERE ID=5;
-- TO PERFORM FUNCTION WITH SPECIFIC COLUMNS
SELECT NAME,SALARY, MIN(SALARY) FROM SHP; 
-- TO PERFORM FUNCTION WITH ALL COLUMNS    
SELECT *, MIN(SALARY) FROM SHP;



/* (2) SCALAR FUNCTIONS */
-- TO PERFORM LOWER FUNCTION 
SELECT LOWER(NAME) FROM SHP WHERE ID=3;

-- TO PERFORM UPPER FUNCTION
SELECT UPPER(NAME) FROM SHP;

-- TO PERFORM SUBSTRING FUNCTION
SELECT NAME, SUBSTRING(NAME,5,6) FROM SHP;
  
-- TO PERFORM LENGTH FUNCTION
SELECT NAME, LENGTH(NAME) FROM SHP;

-- TO PERFORM ROUND FUNCTION
SELECT NAME, ROUND(SALARY) FROM SHP; 

-- TO PERFORM CURRENT TIMESTAMP FUNCTION
SELECT CURRENT_TIMESTAMP; 

-- TO PERFORM FORMAT FUNCTION
SELECT *, FORMAT(SALARY,6) FROM SHP; 

-- TO PERFORM FUNCTION WITH ALIAS
SELECT ID, ROUND(SALARY) AS "RoundValue" FROM SHP;
-- TO PERFORM FUNCTION WITH ALL COLUMNS
SELECT *, ROUND(SALARY) FROM SHP;
-- TO PERFORM FUNCTION WITH SPECIFIC COLUMNS
SELECT ID,NAME, ROUND(SALARY) FROM SHP; 

 
