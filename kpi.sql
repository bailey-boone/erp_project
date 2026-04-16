SELECT SUM(amount_paid) AS total_revenue
FROM Payments;

SELECT 
  SUM(cost_price * stock_quantity) AS inventory_value
FROM Products;

SELECT 
  SUM((oi.unit_price - p.cost_price) * oi.quantity) AS estimated_profit
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id;

SELECT 
  p.name,
  SUM(oi.quantity) AS units_sold,
  p.stock_quantity
FROM Products p
LEFT JOIN Order_Items oi ON p.product_id = oi.product_id
GROUP BY p.product_id;

SELECT 
  (SELECT SUM(amount_paid) FROM Payments) * 1.0 /
  (SELECT SUM(total_amount) FROM Invoices) AS collection_rate;
