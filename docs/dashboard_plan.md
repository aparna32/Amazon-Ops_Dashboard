# Amazon Operations Analytics Dashboard – Planning Document (V2)

## 1. Project Context

This dashboard simulates an **Amazon-style operations analytics system** designed to monitor:
- Order fulfillment efficiency
- SLA adherence
- Delivery delays
- Backlog risk

The goal is to provide **both executive-level visibility and operational drill-down** using Power BI.

This document reflects the **final implemented dashboard**, refined after initial development.

---

## 2. Business Questions Addressed

### Executive-Level
- How many total orders are being processed?
- What percentage of orders are delivered on time?
- How severe are SLA breaches?
- Is backlog building up?

### Operations-Level
- Which categories have the highest delivery delays?
- Which categories contribute most to SLA breaches?
- What is the distribution of order statuses?
- Which products are affected by backlog or SLA issues?

---

## 3. Data Sources

### Tables Used
**Orders (sample_orders.csv)**
- order_id
- order_date
- dispatch_date
- delivery_date
- order_status
- product_id
- customer_id

**Products (products.csv)**
- product_id
- product_name
- category
- sla_days

Relationship:
- Products (1) → Orders (Many) via product_id

---

## 4. KPIs Defined

| KPI | Description |
|----|------------|
| Total Orders | Count of all orders |
| Delivered Orders | Orders with status = Delivered |
| On-Time Delivery % | % of delivered orders within SLA |
| SLA Breach Rate % | % of delivered orders exceeding SLA |
| Average Delivery Days | Avg. days between dispatch & delivery |
| Backlog Orders | Orders not yet delivered |

---

## 5. Dashboard Structure

### Page 1: Executive Summary
**Purpose:** Quick health check for leadership

**Visuals:**
- KPI Cards:
  - Total Orders
  - Delivered Orders
  - On-Time Delivery %
  - SLA Breach Rate %
  - Backlog Orders
- Line Chart:
  - Order Trends by Order Date
- Bar Chart:
  - Orders by Category
- Slicers:
  - Category
  - Order Status

---

### Page 2: Delivery Performance
**Purpose:** Analyze delivery efficiency and delays

**Visuals:**
- KPI Cards:
  - Delivered Orders
  - Average Delivery Days
  - On-Time Delivery %
  - SLA Breach Rate %
- Bar Chart:
  - Average Delivery Days by Category
- Column Chart:
  - Order Status Distribution
- Bar Chart:
  - SLA Breaches by Category
- Slicers:
  - Category
  - Order Status

---

### Page 3: Backlog & SLA Analysis
**Purpose:** Identify operational risk areas

**Visuals:**
- KPI Cards:
  - Backlog Orders
  - On-Time Delivery %
  - SLA Breach Rate %
- Bar Chart:
  - Backlog Orders by Category
- Horizontal Bar Chart:
  - SLA Breaches by Category
- Table:
  - Product-level SLA details
- Slicers:
  - Category
  - Order Status

---

## 6. Design Principles Followed

- Consistent KPI card size, border radius, and alignment
- Executive-first layout (KPIs → Trends → Breakdown)
- Minimal color palette for clarity
- Clear titles and axis labels
- Logical page flow from summary → detail → risk

---

## 7. Assumptions & Limitations

- Dataset is simulated and small-scale
- No real-time data refresh
- SLA logic assumes dispatch-to-delivery comparison only

---

## 8. Future Enhancements

- Add region / warehouse dimension
- Introduce aging buckets for backlog
- Add trend analysis for SLA breaches
- Enable drill-through from category → product → order

---

## 9. Outcome

This dashboard demonstrates:
- End-to-end analytics workflow
- Business-oriented KPI thinking
- Power BI dashboard structuring
- Readiness for real-world operations analytics roles
