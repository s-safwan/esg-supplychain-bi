CREATE OR REPLACE TABLE `esg-supplychain-bi.supply_chain.esg_shipments` AS

-- STEP 1: The "shipments_clean" phase (Replaces your first ChatGPT query)
WITH shipments_clean AS (
    SELECT
        `Order Id` AS order_id,
        CAST(`order date _DateOrders_` AS TIMESTAMP) AS order_date,
        CAST(`shipping date _DateOrders_` AS TIMESTAMP) AS shipping_date,
        COALESCE(`Shipping Mode`, 'Standard Class') AS shipping_mode,
        `Order Region` AS order_region,
        `Order Country` AS order_country,
        `Order City` AS order_city,
        `Sales` AS sales,
        `Order Item Quantity` AS quantity,  -- The column that caused the error is fixed here
        `Product Price` AS product_price,
        `Latitude` AS latitude,
        `Longitude` AS longitude
    FROM `esg-supplychain-bi.supply_chain.shipments_raw`
)

-- STEP 2: The "Scores & Join" phase (Replaces your second and third ChatGPT queries)
SELECT
    order_id,
    order_date,
    shipping_date,
    shipping_mode,
    order_region,
    order_country,
    order_city,
    sales,
    quantity,
    product_price,
    latitude,
    longitude,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,

    -- Recreating your original 'shipping_mode_scores' base values
    CASE
        WHEN shipping_mode = 'Same Day' THEN 4
        WHEN shipping_mode = 'First Class' THEN 3
        WHEN shipping_mode = 'Second Class' THEN 2
        WHEN shipping_mode = 'Standard Class' THEN 1
        ELSE 1
    END AS emission_score,

    -- The NEW Enterprise logic (Volume * Efficiency Penalty) to power the Tableau dashboard
    CASE
        WHEN shipping_mode = 'Same Day' THEN quantity * 2.5
        WHEN shipping_mode = 'First Class' THEN quantity * 1.5
        WHEN shipping_mode = 'Second Class' THEN quantity * 1.0
        WHEN shipping_mode = 'Standard Class' THEN quantity * 0.5
        ELSE quantity * 1.0
    END AS estimated_emission_score

FROM shipments_clean;