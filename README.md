E-Commerce Operations Dashboard

This project presents an operational performance dashboard developed in Power BI to monitor order fulfilment in an e-commerce environment. The report highlights delivery delays, SLA adherence, order volume trends, and product-level issues, enabling informed decision-making for supply chain and customer operations teams.

Project Objectives

This dashboard addresses key operational questions:

Are delivery SLAs being met consistently?

How frequently do delays occur, and by how many days?

Which products or categories contribute most to SLA breaches?

How do daily order volumes vary over time?

What operational bottlenecks are affecting fulfilment performance?

The aim is to provide a consolidated overview of metrics that influence customer satisfaction and operational efficiency.

Tools and Technologies

Power BI Desktop

DAX (for KPI calculations)

SQL (table structure and schema definitions)

Star schema data modeling

CSV datasets

GitHub for version control

A star schema was implemented to maintain clarity, scalability, and efficient filtering.

Calendar (1) ───────────────┐
                             │
                             ▼
                        sample_orders (Fact)
                             ▲
                             │
products (1) ───────────────┘

Key Relationships:

Calendar[Date] → sample_orders[order_date]

products[product_id] → sample_orders[product_id]

This structure supports correct time intelligence calculations and product-level analysis

Dashboard Components
KPI Indicators

Total Orders

Average Delivery Delay (Days)

SLA Breach Count

Visuals Included

Orders Over Time (line chart)

SLA Breaches by Product (bar chart)

Detailed Delayed Orders table

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
These measures drive the operational KPIs displayed in the report.

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
Option 1: Download the PBIX File

Navigate to the /powerbi folder and download Amazon_Ops_Dashboard.pbix to open the dashboard in Power BI Desktop.

Option 2: Recreate the Report Manually

Import the CSV files from /data

Rebuild the star schema using the defined relationships

Add the DAX measures provided above

Recreate the visuals following the dashboard layout

Future Enhancements

On-time delivery percentage metric

Month-over-month and year-to-date trend analysis

Drill-through pages for product-level investigation

Forecasting models for delay likelihood

Row-level security configurations

Expansion using larger datasets for deeper operational reporting

Summary

This project demonstrates end-to-end dashboard development using Power BI, incorporating structured data modeling, DAX-based KPI creation, and operational reporting. It reflects practical analytical skills relevant to real e-commerce and supply chain environments.
