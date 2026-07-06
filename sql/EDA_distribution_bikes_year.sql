SELECT year,
    COUNT(*) AS number_of_bikes
FROM cleaned_data
GROUP BY year
ORDER BY year DESC;