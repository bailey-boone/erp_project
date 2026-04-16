SELECT SUM(amount_paid) AS total_revenue
FROM Payments;

SELECT 
  i.invoice_id,
  i.total_amount,
  COALESCE(SUM(p.amount_paid), 0) AS paid_amount,
  (i.total_amount - COALESCE(SUM(p.amount_paid), 0)) AS outstanding
FROM Invoices i
LEFT JOIN Payments p ON i.invoice_id = p.invoice_id
GROUP BY i.invoice_id;

SELECT 
  p.name,
  SUM(oi.quantity * oi.unit_price) AS total_sales
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name;

SELECT 
  name,
  stock_quantity
FROM Products;

SELECT 
  c.name,
  SUM(p.amount_paid) AS total_spent
FROM Payments p
JOIN Invoices i ON p.invoice_id = i.invoice_id
JOIN Orders o ON i.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.name;

SELECT 
  payment_date,
  SUM(amount_paid) AS daily_revenue
FROM Payments
GROUP BY payment_date
ORDER BY payment_date;