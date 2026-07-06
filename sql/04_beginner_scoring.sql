CREATE VIEW bike_scoring AS
SELECT CONCAT(INITCAP(brand), ' ', model) AS bike,
 	year,
	category,
	CASE 
		WHEN displacement_ccm::NUMERIC > 550
		THEN '1'
		ELSE '0'
	END AS displacement_ccm,
	CASE
		WHEN engine_cylinder IN ('Twin', 'V2', 'Single cylinder')
		THEN '0'
		ELSE '1'
	END AS engine_cylinder,
	CASE 
		WHEN power_hp::NUMERIC > 75
		THEN '1'
		ELSE '0'
	END AS power_hp,
	CASE 
		WHEN seat_height_mm::NUMERIC > 813
		THEN '1'
		ELSE '0'
	END AS seat_height_mm,
	CASE 
		WHEN dry_weight_kg::NUMERIC > 813
		THEN '1'
		ELSE '0'
	END AS dry_weight_kg
FROM cleaned_data
WHERE displacement_ccm NOT LIKE 'Unknown'
		AND engine_cylinder NOT LIKE 'Unknown'
		AND power_hp NOT LIKE 'Unknown'
		AND seat_height_mm NOT LIKE 'Unknown'
		AND dry_weight_kg NOT LIKE 'Unknown'
ORDER BY year, category;