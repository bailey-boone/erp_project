ERP Retail Database Project
This project is a simple ERP-style database I built for a small online retail store. The goal was to connect sales, inventory, and financial data into one system and then use SQL to analyze it.
What this project does
Tracks customers and their orders
Stores product and inventory data
Generates invoices from orders
Records payments (including partial payments)
Calculates basic financial metrics like revenue and outstanding balances
Files
schema.sql – creates all the tables
seed.sql – inserts sample data
queries.sql – basic reports (revenue, sales by product, AR)
kpi.sql – higher-level metrics like profit and collection rate
Key things I focused on
One thing I tried to model realistically was partial payments. Not every invoice is fully paid, so the database can track outstanding balances (Accounts Receivable).\
I also separated raw queries from KPI calculations to make it feel closer to how real systems are structured.
What I learned
How different parts of a business system connect (orders → invoices → payments)
Writing SQL for reporting, not just storing data
Thinking about data from a business/finance perspective, not just technical
Notes
This is a simplified system, but it shows the core idea behind how ERP systems manage and analyze business data.
Future improvements: add suppliers and purchasing flow to make it closer to a full ERP system.
