SELECT * FROM CROPS WHERE CROPID = 33;
COMMIT;
UPDATE CROPS SET CROPNAME='FRUITS' WHERE CROPID=33;
COMMIT;
DELETE FROM FARMERS WHERE NAME='LISA';
COMMIT;