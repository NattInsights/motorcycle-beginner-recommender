CREATE VIEW cleaned_data AS
SELECT 
	id,
	brand,
	TRIM(COALESCE(model, 'Unknown')) AS model,
	year,
	TRIM(COALESCE(category, 'Unknown')) AS category,
	COALESCE(rating:: TEXT, 'Unknown') AS rating,
	COALESCE(displacement_ccm::TEXT, 'Unknown') AS displacement_ccm,
	COALESCE(power_hp:: TEXT, 'Unknown') AS power_hp,
		TRIM(COALESCE(engine_cylinder, 'Unknown')) AS engine_cylinder,
		COALESCE(fuel_capacity_lts::TEXT, 'Unknown') AS fuel_capacity_lts,
	COALESCE(dry_weight_kg::TEXT, 'Unknown') AS dry_weight_kg,
	COALESCE(seat_height_mm::TEXT, 'Unknown') AS seat_height_mm
FROM motorcycles
WHERE year >= 2010;