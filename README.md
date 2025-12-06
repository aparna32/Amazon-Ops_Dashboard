E-Commerce Operations Dashboard

This project presents an operational performance dashboard developed in Power BI to monitor order fulfilment in an e-commerce environment. The report supports decision-making for supply chain, last-mile delivery, and customer operations teams by highlighting delivery delays, SLA adherence, daily order volume patterns, and product-level issues.

Project Objectives

The dashboard is designed to answer key operational questions:

Are delivery SLAs being met consistently?

How frequently do delays occur, and by how many days?

Which products or categories contribute most to SLA breaches?

How do daily order volumes vary over time?

Where are the operational bottlenecks affecting fulfilment performance?

The report provides a consolidated view of trends that impact customer satisfaction and operational efficiency.

Tools and Technologies

Power BI Desktop

Data Modeling (Star Schema)

DAX for KPI calculations

SQL (table definitions and structure)

CSV datasets

GitHub for version control

Data Model

A star schema was implemented to ensure clean relationships and scalable reporting.

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

The model enables accurate slicing, filtering, and time intelligence calculations.

Dashboard Components
KPI Indicators

Total Orders

Average Delivery Delay (Days)

SLA Breach Count

Visuals

Orders Over Time (line chart)

SLA Breaches by Product (bar chart)

Detailed table of delayed orders

Date and product slicers for interactive filtering

Core DAX Measures
Total Orders =
    COUNT(sample_orders[order_id])

Average Delay =
    AVERAGE(sample_orders[DelayDays])

SLA Breach Count =
    COUNTROWS(
        FILTER(
            sample_orders,
            sample_orders[DelayDays] > sample_orders[sla_days]
        )
    )


These measures support the main KPIs and visual components.

Repository Structure
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

How to Use
Option 1: Download the PBIX

Navigate to the /powerbi folder and download Amazon_Ops_Dashboard.pbix to view the complete report in Power BI Desktop.

Option 2: Rebuild the Report

Import the CSV files from the /data folder, recreate the relationships described above, and add the DAX measures included in this README.

Future Enhancements

Additional delivery performance metrics (e.g., on-time delivery rate)

Month-over-month and year-to-date trend analysis

Drill-through pages for product-level investigation

Forecasting models for delay probability

Row-level security scenarios

Integration with larger datasets for expanded operational reporting

Summary

This project demonstrates the development of a structured operational dashboard using Power BI, from data modeling through visual design and KPI creation. It reflects practical experience with BI tools and an understanding of core operational metrics in an e-commerce context.
