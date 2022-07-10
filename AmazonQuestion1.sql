-- SQL TO FINDOUT THE WEATHER ID DAYS TEMPERATURE MORE THEN PREVIOUS DAY
create table wt (ID NUMBER, dates DATE);
create table temps (temp NUMBER, dates DATE);

insert into wt values(1, TO_DATE('01-01-2015','DD-MM-YYYY'));
insert into wt values(2, TO_DATE('01-01-2016','DD-MM-YYYY'));

insert into temps values(20, TO_DATE('01-01-2015','DD-MM-YYYY'));
insert into temps values(10, TO_DATE(TO_DATE('01-01-2015','DD-MM-YYYY'))-1);

insert into temps values(30, TO_DATE('01-01-2016','DD-MM-YYYY'));
insert into temps values(20, TO_DATE(TO_DATE('01-01-2016','DD-MM-YYYY'))-1);

SELECT * FROM WT;

select * from TEMPS;
-- wt
-- ID| date
-- 1  01-01-2015

-- Temp
-- temp| date
-- 10 01-01-2015
-- 20 31-12-2014

select w.ID from wt w where 
(select t.TEMP from temps t where t.DATES = w.DATES) > 
(select F.TEMP from temps F where F.DATES = TO_DATE(w.DATES)-1);
