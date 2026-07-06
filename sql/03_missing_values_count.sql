SELECT COUNT(*) AS total_bikes,
	COUNT(*) FILTER(WHERE brand IS NULL) AS null_brand,
	COUNT(*) FILTER(WHERE model IS NULL) AS null_model,
	COUNT(*) FILTER(WHERE year IS NULL) AS null_year,
	COUNT(*) FILTER(WHERE category IS NULL) AS null_category,
	COUNT(*) FILTER(WHERE rating IS NULL) AS null_rating,
	COUNT(*) FILTER(WHERE displacement_ccm IS NULL) AS null_displacement,
	COUNT(*) FILTER(WHERE power_hp IS NULL) AS null_power,
	COUNT(*) FILTER(WHERE torque_nm IS NULL) AS null_torque,
	COUNT(*) FILTER(WHERE engine_cylinder IS NULL) AS null_engine_cyclinder,
	COUNT(*) FILTER(WHERE fuel_capacity_lts IS NULL) AS null_fuel_capacity,
	COUNT(*) FILTER(WHERE dry_weight_kg IS NULL) AS null_dry_weight,
	COUNT(*) FILTER(WHERE seat_height_mm IS NULL) AS null_seat_height
FROM motorcycles;