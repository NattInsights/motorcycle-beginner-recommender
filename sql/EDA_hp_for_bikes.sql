SELECT CONCAT(INITCAP(brand), ' ', model),
        power_hp
FROM cleaned_data
GROUP BY brand, model, power_hp
HAVING power_hp NOT LIKE '%Unknown%'
ORDER BY power_hp DESC;