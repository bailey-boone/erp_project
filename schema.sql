-- customers table
CREATE TABLE Customers (
  customer_id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT,
  created_at TEXT
);

-- products we sell
CREATE TABLE Products (
  product_id INTEGER PRIMARY KEY,
  name TEXT,
  cost_price REAL,
  selling_price REAL,
  stock_quantity INTEGER
);

-- orders placed by customers
CREATE TABLE Orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  order_date TEXT,
  total_amount REAL,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- items inside each order
CREATE TABLE Order_Items (
  order_item_id INTEGER PRIMARY KEY,
  order_id INTEGER,
  product_id INTEGER,
  quantity INTEGER,
  unit_price REAL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- invoice generated from orders
CREATE TABLE Invoices (
  invoice_id INTEGER PRIMARY KEY,
  order_id INTEGER,
  invoice_date TEXT,
  total_amount REAL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- payments made by customers
CREATE TABLE Payments (
  payment_id INTEGER PRIMARY KEY,
  invoice_id INTEGER,
  payment_date TEXT,
  amount_paid REAL,
  FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id)
);
