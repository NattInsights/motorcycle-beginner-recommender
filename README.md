🏍️ Beginner Motorcycle Recommendation System

🛠️ Techstack: <p align="left">
  <img src="https://skillicons.dev/icons?i=postgres,python,pandas,vscode,git,github" />
</p>

❓ Problem statement: Choosing your first bike can be difficult due to the trade-offs between specifications. First time riders may not be aware of the specifications that contribute to a reliable and comfortable ride. Having a system that can recommend which bikes may be useful for someone who is getting into riding can ease indecisiveness and narrow down options.

📖 Overview: This project analyses the Motorcycle Specifications Dataset by Emmanuel F. Werr from Kaggle with 38,472 motorcycles over 28 attributes, sapnning from 1874 to 2022. It develops a rule-based recommendation system to identify beginner-freindly motorcycles using PostgreSQL and Python.

📂 Dataset:

🧹 Data cleaning: The dataset used was partially curated with formatting and missing values still present.
Handled missing values replacing them with the text 'Unknown'. 
Feature selection narrowing down the attributes to 11 from 28:
Handled formatting inconsistencies.

📈 EDA:
🔍 Key Insights

Recommendation system:
Tailoring to beginners - split into 2 sections
Reliability:
500cc >= displacement
2 cylinders or less - engine_cylinder
75 hp >= horsepower 
Comfort:
250kg >= dry weight
813mm >= seat_height
Example SQL outputs (limited)

Approach: Convert the attributes that meet the criteria above to a 0, and those that do not to 1. 
Calculate the total score after converting each attribute by summing them. This gives scores ranging from 1-6 for motorcycles, with a lower number indicating a more beginner-friendly bike.

📁 Project Structure

📊 Future improvements