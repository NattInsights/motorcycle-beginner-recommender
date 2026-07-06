WITH scoring_calculation AS
    (SELECT
        bike,
        year,
        category,
        displacement_ccm::NUMERIC + engine_cylinder::NUMERIC +
        power_hp::NUMERIC + seat_height_mm::NUMERIC + dry_weight_kg::NUMERIC AS bike_score
    FROM bike_scoring
)

SELECT
    bike,
    year,
    category,
    bike_score AS score,
    CASE
        WHEN bike_score = 0 THEN 'Excellent'
        WHEN bike_score = 1 THEN 'Very Good'
        WHEN bike_score = 2 THEN 'Good'
        WHEN bike_score = 3 THEN 'Okay'
        ELSE 'Not recommended'
    END AS recommendation
FROM scoring_calculation
ORDER BY score ASC;