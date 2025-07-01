---1. INNER JOIN (Orders with Customer Details)

SELECT 
    c.customer_id,
    c.first_name,
	c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM public.customers c
INNER JOIN public.orders o 
    ON c.customer_id = o.customer_id;


---LEFT JOIN (All Customers with Orders)

SELECT 
    c.customer_id,
    c.first_name,
	c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM public.customers c
LEFT JOIN public.orders o 
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id;


---RIGHT JOIN (All Products with Order Data)

SELECT 
    p.product_id,
    p.product_name,
    oi.order_id,
    oi.quantity,
    oi.unit_price
FROM public.order_items oi 
RIGHT JOIN public.products p 
    ON oi.product_id = p.product_id
ORDER BY p.product_id;


---FULL JOIN (Customers and Orders Relationship)

SELECT 
    c.customer_id,
    c.first_name,
	c.last_name,
    o.order_id,
    o.order_date,
    o.total_amount
FROM public.customers c
FULL JOIN public.orders o 
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_id;




