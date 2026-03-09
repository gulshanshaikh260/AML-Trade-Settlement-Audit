# Automated AML & Trade Settlement Audit Pipeline

# Objective
Leveraging domain expertise in banking and clearing operations to architect a robust SQL pipeline. This project automates the detection of Anti-Money Laundering (AML) risks and audits T+2 trade settlement Service Level Agreement (SLA) breaches across large-scale financial datasets.

# Technical Skills Demonstrated
* **Advanced SQL:** Common Table Expressions (CTEs), Window Functions, and Conditional Aggregation.
* **Data Modeling:** Designing DDL scripts for financial tables with precise data types (`DECIMAL(10,2)`).
* **Risk Logic:** Utilizing `CASE WHEN` and `DATEDIFF` to create automated compliance flags.

# The Audit Logic
The master query (`02_compliance_audit.sql`) dynamically evaluates raw trade data to output a clean, executive-level report:
1. Calculates **Total Trade Exposure** dynamically.
2. Flags transactions exceeding ₹1,000,000 as **High Risk (AML)**.
3. Audits the clearing cycle, flagging trades that took >2 days to settle as **SLA Breaches**.
