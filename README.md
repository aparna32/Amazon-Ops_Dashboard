# **E-Commerce Operations Dashboard**

Power BI and SQL–based dashboard to monitor e-commerce operations including orders, delivery performance, SLAs, and delays.

## **Overview**
This project focuses on analysing fulfilment performance using structured datasets and a Power BI dashboard.  
It highlights delivery delays, SLA breaches, product-level issues, and operational bottlenecks to support decision-making across supply chain and customer operations.

## **Features**
- Order volume tracking  
- SLA compliance monitoring  
- Delay and breach analysis  
- Product-level performance insights  
- Calendar-based trend analysis  
- Interactive slicers (date and product)

## **Tools Used**
- Power BI  
- SQL  
- DAX  
- Excel (CSV data source)

## **Data Model**
Star schema using one fact table and two dimensions:

```
Calendar → sample_orders ← Products
```

## **DAX Measures**
Core measures used in the dashboard:

```DAX
Total Orders =
    COUNT(sample_orders[order_id])
```

```DAX
Average Delay =
    AVERAGE(sample_orders[DelayDays])
```

```DAX
SLA Breach Count =
    COUNTROWS(
        FILTER(
            sample_orders,
            sample_orders[DelayDays] > sample_orders[sla_days]
        )
    )
```

## **Status**
Dashboard structure completed — KPIs, visuals, data model, and relationships implemented.  
Further enhancements planned in upcoming iterations.

## **Summary**
This project demonstrates end-to-end development of an operational analytics dashboard using Power BI.  
It covers data modeling, DAX measure creation, and visual reporting aligned with common e-commerce fulfilment metrics.  
The structure provides a foundation for more advanced analysis such as forecasting, MoM trends, and drill-down reporting.
