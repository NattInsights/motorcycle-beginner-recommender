SELECT *,
	CASE 
		WHEN displacement_ccm::NUMERIC > 550
		THEN displacement_ccm||' (1)'
		ELSE displacement_ccm||' (0)'
	END AS displacement_ccm,
	CASE
		WHEN engine_cylinder IN ('Twin', 'V2', 'Single cylinder')
		THEN engine_cylinder||' (0)'
		ELSE engine_cylinder||' (1)'
	END AS engine_cylinder,
	CASE 
		WHEN power_hp::NUMERIC > 75
		THEN power_hp||' (1)'
		ELSE power_hp||' (0)'
	END AS power_hp,
	CASE 
		WHEN seat_height_mm::NUMERIC > 813
		THEN seat_height_mm||' (1)'
		ELSE seat_height_mm||' (0)'
	END AS seat_height_mm,
	CASE 
		WHEN dry_weight_kg::NUMERIC > 813
		THEN dry_weight_kg||' (1)'
		ELSE dry_weight_kg||' (0)'
	END AS dry_weight_kg
FROM cleaned_data
WHERE displacement_ccm NOT LIKE 'Unknown'
		AND engine_cylinder NOT LIKE 'Unknown'
		AND power_hp NOT LIKE 'Unknown'
		AND seat_height_mm NOT LIKE 'Unknown'
		AND dry_weight_kg NOT LIKE 'Unknown'
ORDER BY year, category;