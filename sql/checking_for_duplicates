SELECT  id, brand, model, year, COUNT(*) AS duplicate_count
FROM cleaned_data
GROUP BY id, brand, model, year
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;