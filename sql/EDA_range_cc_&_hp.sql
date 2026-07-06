SELECT
    MIN(power_hp) AS min_power_hp,
    MAX(power_hp) AS max_power_hp,
    MIN(displacement_ccm) AS min_displacement,
    MAX(displacement_ccm) AS max_displacement
FROM cleaned_data
WHERE power_hp NOT LIKE '%Unknown%'
  AND displacement_ccm NOT LIKE '%Unknown%';