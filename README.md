💰 Big Black Money – Financial Fraud Detection & Risk Analytics Dashboard
🧠 Overview

This project focuses on detecting high-risk and fraudulent financial transactions using the Big Black Money Dataset. The analysis combines SQL, Excel, and Power BI to uncover hidden patterns in cross-border transactions, tax-haven transfers, and money laundering risk scores.

🧩 Objectives

Identify flagged and high-risk transactions based on laundering risk scores.

Calculate fraud rates and analyze flagged transaction trends over time.

Visualize fund flow towards tax havens and assess total exposure.

Develop an interactive Power BI dashboard for real-time fraud monitoring.

🛠️ Tools & Technologies
Tool	Purpose
Excel	Data cleaning, transformation, and feature creation
SQL	Querying, aggregation, and fraud pattern extraction
Power BI	Dashboard design, KPI cards, and DAX-driven insights
DAX	Calculated measures for fraud rate, flagged transactions, and total exposure
⚙️ Key DAX Measures
Total Transactions (summary) = SUM( 'Avg & High Risk Transaction'[Tax_count] )

Flagged Transactions (daily) = SUM( 'Daily fraud'[flagged_tx] )

Flagged Amount (daily) = SUM( 'Daily fraud'[flagged_amount] )

Fraud Rate % = DIVIDE( [Flagged Transactions (daily)], [Total Transactions (summary)], 0 )

📊 Dashboard Highlights

✅ Fraud detection overview with real-time KPIs
✅ Fraud rate (%) and flagged transaction trends over time
✅ Top tax-haven exposure visualizations
✅ Risk segmentation by country and score
✅ Drill-through analysis for transaction-level insights

📁 Project Structure
📦 Big_Black_Money_Fraud_Analytics/
 ┣ 📂 Dataset/
 ┃ ┗ Big_Black_Money_Dataset.csv
 ┣ 📂 Results/
 ┃ ┣ Big_Black_Money_Dataset.xlsx
 ┃ ┣ SQL_Fraud_Queries.sql
 ┣ 📂 PowerBI_Dashboard/
 ┃ ┣ Fraud_Dashboard.pbix
 ┃ ┣ Dashboard_Screenshot.png
 ┗ README.md

📈 Insights

💸 Over X% of transactions flagged as potentially fraudulent

🌍 Significant fund transfers observed towards known tax haven countries

⚠️ High-risk patterns identified in transactions with laundering score ≥ 8

🧩 Dashboard allows drilldown to analyze daily flagged activity

🧑‍💻 Author

Gourab Kumar Dash
Data Analyst | BI & Machine Learning Enthusiast
📧 gourabdatanalyst@gmail.com
🔗 https://www.linkedin.com/in/gaurabdataanalyst/
📍 Gurugram, India
