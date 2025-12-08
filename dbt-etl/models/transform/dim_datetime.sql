-- dim_datetime.sql
-- Create a CTE to extract date and time components from InvoiceDate

WITH datetime_cte AS (
  SELECT DISTINCT
    InvoiceDate AS datetime_id,
    InvoiceDate AS date_part
  FROM {{ source('retail_dsy', 'raw_invoice') }}
  WHERE InvoiceDate IS NOT NULL
)

SELECT
  datetime_id,
  date_part AS datetime,
  EXTRACT(YEAR FROM date_part) AS year,
  EXTRACT(MONTH FROM date_part) AS month,
  EXTRACT(DAY FROM date_part) AS day,
  EXTRACT(HOUR FROM date_part) AS hour,
  EXTRACT(MINUTE FROM date_part) AS minute,
  EXTRACT(DAYOFWEEK FROM date_part) AS weekday
FROM datetime_cte;
