CREATE DATABASE project;
SHOW DATABASES;
USE project;

SELECT COUNT(*) FROM df;

SELECT platform, COUNT(*) AS liczba
FROM df
GROUP BY platform;

SELECT Category, COUNT(*) AS liczba
FROM df
GROUP BY Category
ORDER BY liczba DESC;

-- AVG NIKON D7500 price per platform
SELECT 
platform,
AVG(price_eur) AS avg_price
FROM df
WHERE name LIKE '%D7500%'
AND name NOT LIKE '%lens%'
AND name NOT LIKE '%bag%'
AND name NOT LIKE '%case%'
AND name NOT LIKE '%tripod%'
AND name NOT LIKE '%battery%'
AND name NOT LIKE '%memory%'
AND name NOT LIKE '%accessory%'
AND name NOT LIKE '%filter%'
AND name NOT LIKE '%adapter%'
AND name NOT LIKE '%cover%'
AND name NOT LIKE '%screen%'
AND price_eur > 400
GROUP BY platform;

-- AVG DELIVERY TIME PER CATEGORY + OFFER NUMBER
SELECT 
platform,
Category,
COUNT(*) AS offer_amount,
AVG(delivery_days) AS avg_delivery
FROM df
WHERE delivery_days IS NOT NULL
GROUP BY platform, Category
ORDER BY platform, avg_delivery;


-- AVG PRICE AND RATING PER CATEGORY
SELECT 
Category, 
platform,
AVG(price_eur) AS avg_price,
AVG(rating) AS avg_rating
FROM df
GROUP BY Category, platform
ORDER BY avg_rating DESC;

-- AVG SHIPPING PRICE PER CATEGORY AND PLATFORM
SELECT
platform,
Category,
ROUND(AVG(shipping_eur), 2)
FROM df
GROUP BY Category, platform;