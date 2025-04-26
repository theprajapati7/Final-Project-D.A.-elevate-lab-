-- TOTAL PROFIT 

SELECT 
    ROUND(SUM(sales.selling_price - sales.cost_price),
            2) AS Total_profit
FROM
    sales;
    
-- TOTAL REVENUE

SELECT 
    ROUND(SUM(sales.units_sold * sales.selling_price),
            2) AS total_revenue
FROM
    sales;
    
-- TOTAL REVENUE BY CATEGORY     

SELECT 
    products.category,
    ROUND(SUM(sales.units_sold * sales.selling_price),
            2) AS total_revenue
FROM
    sales
        JOIN
    products ON products.product_id = sales.product_id
GROUP BY category
ORDER BY total_revenue DESC;

-- TOTAL REVENUE BY SUB-CATEGORY 


SELECT 
    products.sub_category,
    ROUND(SUM(sales.units_sold * sales.selling_price),
            2) AS total_revenue
FROM
    sales
        JOIN
    products ON products.product_id = sales.product_id
GROUP BY sub_category
ORDER BY total_revenue DESC;

-- TOTAL REVENUE BY REGIONS
SELECT 
    regions.region,
    ROUND(SUM(sales.units_sold * sales.selling_price),
            2) AS total_revenue
FROM
    sales
        JOIN
    regions ON regions.order_id = sales.order_id
GROUP BY region
ORDER BY total_revenue DESC;

-- TOTAL UNITS SOLD

SELECT 
    SUM(units_sold)
FROM
    sales AS Total_unit_sold;
    
    
