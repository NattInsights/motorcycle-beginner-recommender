SELECT COUNT(DISTINCT brand) AS brand_types,
	COUNT(DISTINCT model) AS model_types,
	COUNT(DISTINCT category) AS category_types,
	COUNT(DISTINCT engine_cylinder) AS engine_cylinder_types
FROM motorcycles; 