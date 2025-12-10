use LPU;

CREATE TABLE BANK (
    BANK_ID INT,
    BANK_NAME VARCHAR(20),
    CITY VARCHAR(30),
    DOP DATE
);
 
INSERT INTO BANK ( BANK_ID,BANK_NAME,CITY,DOP) 
VALUES
 (1, 'SBI', 'Amritsar', '2019-04-06'),
 (2, 'HDFC', 'MUMBAI', '2018-07-15'),
 (3, 'ICICI', 'DELHI', '2017-03-28'),
 (4, 'Indian Bank', 'Jalandhar', '2016-03-29'),
 (5, 'Indian Ocean', 'Kolkata', '2016-03-29'),
 (6, 'Federal Bank', 'Jalandhar', '2016-03-30');

--specfic column insertion ( only bank_id, bank_name & City are inserted).
INSERT INTO BANK ( BANK_ID,BANK_NAME,CITY) VALUES (8,'BOI','Indore');

--null value insertion.
INSERT INTO BANK ( BANK_ID,BANK_NAME,CITY,DOP) VALUES (NULL,'BOI',NULL,'2016-03-30');

SELECT * FROM BANK;

SELECT BANK_NAME,CITY
FROM BANK
ORDER BY BANK_ID;