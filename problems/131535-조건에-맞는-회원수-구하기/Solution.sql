SELECT COUNT(*) AS users
FROM user_info
WHERE joined >= '2021-01-01'
AND joined < '2022-01-01'
AND age between 20 and 29
