SELECT
    `Order Id`,
    `Order Region`,
    `Order Country`,
    `Order City`,
    `Shipping Mode`,
    DATE(`order date _DateOrders_`) AS Order_Date,
    EXTRACT(YEAR FROM DATE(`order date _DateOrders_`)) AS Order_Year,
    EXTRACT(MONTH FROM DATE(`order date _DateOrders_`)) AS Order_Month,
    Quantity,
    Sales,

    CASE
        WHEN `Shipping Mode` = 'Standard Class' THEN Quantity * 1.2
        WHEN `Shipping Mode` = 'First Class' THEN Quantity * 0.9
        WHEN `Shipping Mode` = 'Second Class' THEN Quantity * 0.8
        WHEN `Shipping Mode` = 'Same Day' THEN Quantity * 0.5
        ELSE Quantity
    END AS Estimated_Emission_Score

FROM `esg-supplychain-bi.supply_chain.shipments_raw`;