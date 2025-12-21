-- Total orders
SELECT COUNT(*) AS total_orders FROM vw_order_kpis;

-- Delivered vs not delivered
SELECT order_status, COUNT(*) AS orders
FROM vw_order_kpis
GROUP BY order_status;

-- On-time delivery %
SELECT
  ROUND(
    100.0 * SUM(CASE WHEN order_status = 'Delivered' AND sla_breached = 0 THEN 1 ELSE 0 END)
    / NULLIF(SUM(CASE WHEN order_status = 'Delivered' THEN 1 ELSE 0 END), 0),
  2) AS on_time_delivery_pct
FROM vw_order_kpis;

-- SLA breach rate (delivered only)
SELECT
  ROUND(
    100.0 * SUM(CASE WHEN order_status='Delivered' AND sla_breached=1 THEN 1 ELSE 0 END)
    / NULLIF(SUM(CASE WHEN order_status='Delivered' THEN 1 ELSE 0 END), 0),
  2) AS sla_breach_rate_pct
FROM vw_order_kpis;

-- Average delivery days (delivered only)
SELECT
  ROUND(AVG(delivery_days), 2) AS avg_delivery_days
FROM vw_order_kpis
WHERE order_status='Delivered';

-- Backlog count (pending / no delivery date)
SELECT
  SUM(is_backlog) AS backlog_orders
FROM vw_order_kpis;

-- SLA breaches by region
SELECT
  region,
  COUNT(*) AS delivered_orders,
  SUM(sla_breached) AS breached_orders
FROM vw_order_kpis
WHERE order_status='Delivered'
GROUP BY region
ORDER BY breached_orders DESC;

-- Average delay by category
SELECT
  category,
  ROUND(AVG(delivery_days), 2) AS avg_delivery_days
FROM vw_order_kpis
WHERE order_status='Delivered'
GROUP BY category
ORDER BY avg_delivery_days DESC;
