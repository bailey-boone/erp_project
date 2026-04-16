INSERT INTO Customers (customer_id, name, email, created_at) VALUES
(1, 'John Miller', 'john@gmail.com', '2026-04-01'),
(2, 'Sarah Lopez', 'sarah@yahoo.com', '2026-04-02'),
(3, 'David Kim', 'david@hotmail.com', '2026-04-03');

INSERT INTO Products (product_id, name, cost_price, selling_price, stock_quantity) VALUES
(1, 'Wireless Mouse', 10.00, 18.99, 50),
(2, 'Keyboard', 15.00, 29.99, 40),
(3, 'USB Cable', 2.00, 6.99, 100);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2026-04-05', 48.98),
(2, 2, '2026-04-06', 29.99);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 2, 18.99),
(2, 1, 3, 1, 6.99),
(3, 2, 2, 1, 29.99);

INSERT INTO Invoices (invoice_id, order_id, invoice_date, total_amount) VALUES
(1, 1, '2026-04-05', 48.98),
(2, 2, '2026-04-06', 29.99);

INSERT INTO Payments (payment_id, invoice_id, payment_date, amount_paid) VALUES
(1, 1, '2026-04-05', 48.98),
(2, 2, '2026-04-07', 15.00);