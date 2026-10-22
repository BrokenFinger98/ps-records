SELECT YEAR(differentiation_date) AS year, f1.max_size - ed.size_of_colony AS year_dev, ed.id
FROM ecoli_data ed
JOIN (
    SELECT year(DIFFERENTIATION_DATE) AS year, MAX(SIZE_OF_COLONY) AS max_size
    FROM ECOLI_DATA
    GROUP BY year(DIFFERENTIATION_DATE)
    ) AS f1 
    ON YEAR(ed.differentiation_date) = f1.year
ORDER BY year ASC, year_dev ASC
