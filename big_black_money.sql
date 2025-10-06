create database big_black_money;
use big_black_money;
SELECT 
    *
FROM
    black_money_transactions;
-- Daily Fraud 
SELECT 
    DATE(STR_TO_DATE(`Date of Transaction`,
                '%Y-%m-%d %H:%i:%s')) AS day,
    COUNT(*) AS total_tx,
    SUM(CASE
        WHEN LOWER(`Reported by Authority`) = 'true' THEN 1
        ELSE 0
    END) AS flagged_tx,
    ROUND(SUM(CASE
                WHEN LOWER(`Reported by Authority`) = 'true' THEN `Amount (USD)`
                ELSE 0
            END),
            2) AS flagged_amount
FROM
    black_money_transactions
GROUP BY day
ORDER BY day;
-- Average and high-risk transaction counts
SELECT 
    Country,
    COUNT(*) AS tx_count,
    ROUND(AVG(`Money Laundering Risk Score`), 2) AS avg_risk,
    SUM(CASE
        WHEN `Money Laundering Risk Score` >= 8 THEN 1
        ELSE 0
    END) AS high_risk_count
FROM
    black_money_transactions
GROUP BY Country
ORDER BY high_risk_count DESC;
-- Total USD sent to known tax havens
SELECT 
    `Tax Haven Country`,
    COUNT(*) AS tx_count,
    ROUND(SUM(`Amount (USD)`), 2) AS total_usd
FROM
    black_money_transactions
WHERE
    `Tax Haven Country` IS NOT NULL
        AND `Tax Haven Country` <> ''
GROUP BY `Tax Haven Country`
ORDER BY total_usd DESC;
