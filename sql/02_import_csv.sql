
COPY motorcycles(
    brand, model, year, category, rating, displacement_ccm,
    power_hp, torque_nm, engine_cylinder, engine_stroke,
    gearbox, bore_mm, stroke_mm, fuel_capacity_lts,
    fuel_system, fuel_control, cooling_system, transmission_type,
    dry_weight_kg, wheelbase_mm, seat_height_mm,
    front_brakes, rear_brakes, front_tire, rear_tire,
    front_suspension, rear_suspension, color_options
)
FROM 'C:/Motorcycle_Project/data/all_bikez_curated_comma.csv'
WITH (FORMAT csv, DELIMITER ',', HEADER true);