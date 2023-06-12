SELECT Type_Income, AVG(Annual_income) AS Avg_income
FROM Credit_Card
GROUP BY Type_Income;

SELECT *
FROM Credit_Card
WHERE Gender = 'F' AND Car_owner = 'Y' AND Propert_owner = 'Y';

SELECT *
FROM Credit_Card
WHERE Gender = 'M' AND Housing_type = 'Family';

SELECT *
FROM Credit_Card
ORDER BY Annual_income DESC
LIMIT 5;

SELECT COUNT(*)
FROM Credit_Card c
JOIN Credit_card_label l ON c.Ind_ID = l.Ind_ID
WHERE Marital_status = 'Married' AND Label = 1;

SELECT Education, COUNT(*) AS count
FROM Credit_Card
GROUP BY Education
ORDER BY count DESC
LIMIT 1;

SELECT c.Gender, l.Label, COUNT(l.Label) AS Bad_Credit_Count
FROM `Credit_Card` AS c
JOIN `Credit_card_label` AS l
ON c.Ind_ID = l.Ind_ID where  c.Marital_status = 'Married'
AND l.Label = 1
GROUP BY c.Gender 

