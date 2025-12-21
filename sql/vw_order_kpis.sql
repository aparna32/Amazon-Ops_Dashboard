-- View: vw_order_kpis
-- Purpose: Central KPI layer for Amazon-style operations analytics
-- Calculates delivery time, SLA breach, backlog flag, and joins dimensions

CREATE OR REPLACE VIEW vw_order_kpis AS
SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    c.customer_name,
    c.region,
    o.product_id,
    p.product_name,
    p.category,
    p.sla_days,
    o.order_status,
    o.dispatch_date,
    o.delivery_date,

    -- Days to dispatch
    CASE 
      WHEN o.dispatch_date IS NOT NULL THEN DATEDIFF(o.dispatch_date, o.order_date)
      ELSE NULL
    END AS dispatch_days,

    -- Days to delivery
    CASE
      WHEN o.delivery_date IS NOT NULL THEN DATEDIFF(o.delivery_date, o.order_date)
      ELSE NULL
    END AS delivery_days,

    -- SLA breach flag (delivered orders only)
    CASE
      WHEN o.delivery_date IS NULL THEN NULL
      WHEN DATEDIFF(o.delivery_date, o.order_date) > p.sla_days THEN 1
      ELSE 0
    END AS sla_breached,

    -- Backlog flag
    CASE
      WHEN o.delivery_date IS NULL THEN 1
      ELSE 0
    END AS is_backlog

FROM orders o
JOIN products p ON o.product_id = p.product_id
JOIN customers c ON o.customer_id = c.customer_id;

