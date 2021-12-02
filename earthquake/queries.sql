
.open earthquake.db
.mode column

--SELECT * FROM earthquake;

--Outputs the number of earthquakes stored in our database
SELECT COUNT(*) FROM earthquake;

--Outputs firsts five lines of our db to better understand the data
SELECT * FROM earthquake LIMIT 5;

--Let's see how many earthquakes occurred in 2002 :o
SELECT COUNT(*) FROM earthquake 
WHERE occurred_on BETWEEN "2002-01-01" AND "2002-12-31";

--Selecting every earthquake that happened in PORTUGAL CARALHOOOO
SELECT * FROM earthquake 
WHERE place LIKE "%Portugal%";

--Selectiong the 10 strongests earthquakes
SELECT * From earthquake 
ORDER BY magnitude DESC 
LIMIT 10;

-- How many earthquakes Japan had in March 2003
SELECT COUNT(*) FROM earthquake 
WHERE occurred_on BETWEEN "2011-03-01" AND "2011-03-31";


--Seeing the many replicas that the 2011 Japan's earthquake had
SELECT occurred_on,magnitude,place FROM earthquake 
WHERE place LIKE "%Japan%" AND occurred_on BETWEEN "2011-03-09" AND "2011-03-20";

--This works
SELECT latitude FROM earthquake A 
WHERE A.latitude <=40 AND A.latitude >= 10;

SELECT latitude FROM earthquake A 
WHERE A.latitude <=40 AND A.latitude >= 8;


--Don't understand why quering for latitudes dont work
--Trying to   query for values in range   latitude >= 8 AND latitude <= 40 dont work;
