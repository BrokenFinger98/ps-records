SELECT YEAR(ed.differentiation_date) AS year, f1.max_size - ed.size_of_colony AS year_dev, ed.id
FROM ecoli_data ed
JOIN (
    SELECT YEAR(differentiation_date) AS year, MAX(size_of_colony) AS max_size
    FROM ecoli_data
    GROUP BY YEAR(differentiation_date)
    ) AS f1 
    ON YEAR(ed.differentiation_date) = f1.year
ORDER BY year ASC, year_dev ASC
