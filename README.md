E-Commerce Operations Dashboard

This project presents an operational reporting dashboard developed in Power BI to monitor order fulfilment performance for an e-commerce environment. The report focuses on delivery delays, SLA adherence, product-level issues, and day-to-day operational trends. It is designed to support decision-making for supply-chain, last-mile delivery, and customer-operations teams.

⭐ Business Objectives

The dashboard aims to answer critical operational questions:

Are we meeting delivery SLAs consistently?

Which products or categories drive the highest delays?

How do daily order volumes fluctuate over time?

Where are operational bottlenecks occurring?

What proportion of orders arrive late, and by how much?

This allows stakeholders to proactively address issues affecting customer experience and operational cost.

🛠 Tools & Technologies

Power BI Desktop

DAX for KPI calculations

SQL (table structure & schema files)

Star Schema Data Modeling

CSV source files

GitHub for version control and documentation

🧩 Data Model

A simple, scalable star schema was implemented:

Calendar (1) ───────────────┐
                             │
                             ▼
                        sample_orders (Fact)
                             ▲
                             │
products (1) ───────────────┘

Key relationships:

Calendar[Date] → sample_orders[order_date]

products[product_id] → sample_orders[product_id]

This structure enables accurate time intelligence, efficient slicing, and consistent aggregations across the model.

📊 Dashboard Components
KPI Indicators

Total Orders

Average Delivery Delay (Days)

SLA Breach Count

Visuals

Orders Over Time — trend analysis of order volume

SLA Breaches by Product — product-level operational issues

Delayed Orders Table — granular late-order tracking

Interactive Slicers — date range and product filters

🧮 Core DAX Measures
Total Orders = COUNT(sample_orders[order_id])

Average Delay = AVERAGE(sample_orders[DelayDays])

SLA Breach Count =
COUNTROWS(
    FILTER(sample_orders,
        sample_orders[DelayDays] > sample_orders[sla_days]
    )
)


These measures support KPI calculations and drive all operational views.

📂 Repository Structure
/data
    sample_orders.csv
    products.csv

/sql
    orders_table.sql
    products_table.sql
    customers_table.sql

/powerbi
    Amazon_Ops_Dashboard.pbix

/docs
    dashboard_plan.md

README.md

📥 How to Use

Option 1 – Download the PBIX
Navigate to /powerbi and download Amazon_Ops_Dashboard.pbix to view the full report in Power BI Desktop.

Option 2 – Rebuild the Report
Import the CSV files, recreate the model relationships, and add the DAX measures provided.

🚀 Potential Enhancements

On-Time Delivery % metric

MoM / YTD time-series analytics

Drill-through product pages

Forecasting for delivery delays

Row-Level Security (RLS) scenarios

Integration with larger datasets for deeper operational modelin
