-- Synthetic examples only.
EXPLAIN SELECT id, email FROM customers WHERE status = 'active' ORDER BY created_at DESC LIMIT 50;
SHOW PROCESSLIST;
SHOW VARIABLES LIKE 'max_connections';
SHOW STATUS LIKE 'Threads_connected';
