SELECT brand,
       COUNT(*)
FROM cleaned_data
GROUP BY brand
ORDER BY COUNT(*) DESC;