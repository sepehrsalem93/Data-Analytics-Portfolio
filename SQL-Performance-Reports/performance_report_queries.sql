SELECT 
    customer_region, 
    SUM(sales_amount) AS total_sales, 
    COUNT(order_id) AS total_orders
FROM 
    sales_data
WHERE 
    order_date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY 
    customer_region
ORDER BY 
    total_sales DESC;