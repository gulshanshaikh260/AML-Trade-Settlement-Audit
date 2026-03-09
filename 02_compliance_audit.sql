SELECT 
    trade_id, 
    account_id, 
    stock_symbol,
    (quantity * price) AS total_trade_value, 
    CASE 
        WHEN (quantity * price) > 1000000 THEN 'high risk' 
        ELSE 'standard' 
    END AS AML_flag,
    CASE 
        WHEN DATEDIFF(day, trade_date, settlement_date) > 2 THEN 'breach' 
        ELSE 'compliant' 
    END AS SLA_flag 
FROM trades;
