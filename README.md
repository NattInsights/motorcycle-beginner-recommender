# 🏍️ Beginner Motorcycle Recommendation System

Analysis of the Motorcycle Specifications Dataset by Emmanuel F. Werr from Kaggle found [here](https://www.kaggle.com/datasets/emmanuelfwerr/motorcycle-technical-specifications-19702022/data). This project develops a rule-based recommendation system to identify beginner-freindly motorcycles using percieved assumptions.

## Techstack
 <p align="left">
  <img src="https://skillicons.dev/icons?i=postgres,python,vscode,git,github" />
</p>

Interactive Power BI dashboard exploring motorcycle specifications and relationships
[View Power BI Dashboard](https://app.powerbi.com/groups/me/reports/332106d1-54c1-4303-b76a-c42e390fd356/4bb045bf94c35bf17d46?experience=power-bi)
<img src="C:\Motorcycle_Project\images\dashboard_view.png" width="900">




## Key Insights
- Ducati, Honda and Triumph make the most bikes.
- Engine size and horsepower have a moderately positive correlation, with most bikes clustered in the 0-200 range for horsepower and 0-2000 range for engine size. As the engine size increases, the horsepower typically tends to increase also.
- The average horsepower and engine size trends over the years indicate a fluctuating pattern, showing that not only do they rise and fall together at a very close rate (positively correlated), but they seem to alternate between 50hp, 500cc range and 70-80hp, 700-800cc ranges over 2 year windows.
- The average engine size and horsepower fall into the mid 60hp and 600cc ranges. These are moderately powerful motorcycles, showing that the dataset averages over a steady middle ground for these specifications.
- Seat height does not differ much per category.


## Problem statement:
 - Choosing your first bike can be difficult due to the trade-offs between specifications. First time riders may not be aware of the specifications that contribute to a reliable and comfortable ride. 
 - Having a system that can recommend which bikes may be useful for someone who is getting into riding can ease indecisiveness and narrow down options.
 - Promoting a safe entry into bike riding which can be considered relatively dangerous in comparison to other road vehicles.


## Data cleaning:
The dataset used was partially curated with formatting and missing values still present.

- Handled missing values replacing them with the text 'Unknown'. 
- Feature selection narrowing down attributes from 28 to 12:
<img src="C:\Motorcycle_Project\images\motorcycle_clean_structure.png" width="900">
- Handled formatting inconsistencies.

## Tailoring to beginners
Assumptions made after thorough research for beginner-friendly specifications.
Reliability:
- Engine Size - 500cc or less
- Engine Cylinder - 2 cylinders or less
- Horsepower - 75 hp or less
Comfort:
- Weight - 250kg or less
- Seat Height 813mm or less

## Recommendation system
Approach:
1) Convert the attributes that meet the tailoring to beginners criteria assumptions to "0", and those that do not to "1".
2) Calculate the total score for each motorcycle by summing all columns that are important (those converted to numbers).
3) This gives a score ranging between 0 and 4 inclusive, with a lower number indicating a better fit for beginners.

### Example SQL outputs
Scoring outputs with recommendations
<img src="C:\Motorcycle_Project\images\motorcycle_clean_structure.png" width="900">

<img src="C:\Motorcycle_Project\images\recommendation_system_sql.png" width="900">

## Project Structure
Motorcycle_Project
│
├───data/
├───images/
├───sql/
│
├───Criteria for cleaning motorcycles.txt
├───Motorcycle_Analysis_Dashboard.pbix
└───  README.md

## Future improvements
