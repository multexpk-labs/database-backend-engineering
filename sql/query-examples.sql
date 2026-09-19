-- Synthetic examples only.
SELECT id, email FROM customers WHERE status = 'active' ORDER BY created_at DESC LIMIT 50;

EXPLAIN SELECT o.id, o.total, o.status FROM orders AS o WHERE o.customer_id = 1001 ORDER BY o.created_at DESC LIMIT 25;

START TRANSACTION;
UPDATE orders SET status = 'paid' WHERE id = 1001 AND status = 'pending';
COMMIT;