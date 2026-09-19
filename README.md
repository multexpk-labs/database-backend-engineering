# Database & Backend Engineering

Practical research and engineering for reliable application data systems.

## Focus
- MariaDB / MySQL and relational database design
- Schema design, normalization, constraints, and relationships
- Indexing and query optimization
- Transactions, isolation, locking, and deadlocks
- Migrations, backups, recovery, and replication concepts
- PHP/Laravel and ORM data access
- REST APIs, queues, jobs, idempotency, and observability
- Database security and least privilege

## Engineering Method
**Model → Implement → Measure → Diagnose → Optimize → Verify → Document**

Establish a baseline, inspect evidence, make controlled changes, and measure the result.

## Reference Architecture
`Client → API → Application Service → Data Access Layer → Database`

Supporting components can include queues/workers, monitoring, logs, metrics, alerting, and backup/recovery.

## Data Modeling
Use appropriate primary keys, foreign keys, unique constraints, nullability, timestamps, and domain constraints. Normalize first; denormalize only when a measured workload justifies it.

## Query Performance
Design indexes around real query patterns: predicates, JOINs, ordering, grouping, composite column order, selectivity, storage, and write cost. Use `EXPLAIN` rather than guessing.

## Transactions & Concurrency
Study ACID, isolation levels, row/gap locks, deadlocks, lock wait timeouts, atomic updates, optimistic/pessimistic concurrency, and idempotent operations. Keep transactions short.

## Backend APIs
Define validation, authorization boundaries, consistent responses, pagination, timeouts, retry behavior, idempotency, error handling, and structured logging.

## Safe SQL Example
```sql
CREATE TABLE customers (
    id BIGINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    status VARCHAR(32) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY uq_customers_email (email),
    KEY idx_customers_status_created (status, created_at)
 ) ENGINE=InnoDB;
```

Examples are synthetic and contain no production data.

## Diagnostics
```bash
mysql --version
mysqladmin ping
ss -lntp
df -h
free -h
```

```sql
EXPLAIN SELECT ...;
SHOW PROCESSLIST;
SHOW VARIABLES LIKE 'max_connections';
SHOW STATUS LIKE 'Threads_connected';
```

## Backups & Recovery
Document backup scope, location, retention, access controls, restore procedure, RPO, RTO, and the last successful restore test.

## Security
Never commit database passwords, API tokens, private keys, customer records, production dumps, session secrets, or internal connection strings. Use environment variables or a secret manager and least-privilege accounts.

## Research & Reimplementation
**Find → Clone → Inspect → Understand → Document → Reimplement → Test → Improve**

Check licenses before reusing public code or assets and preserve required attribution/notices.

## Repository Structure
- `docs/` — architecture and engineering notes
- `sql/` — sanitized schema/query examples
- `bash/` — host/database diagnostics
- `python/` — repeatable reports
- `tests/` — testing strategy
- `examples/` — backend patterns

## Related
- [php-laravel-engineering](https://github.com/multexpk-labs/php-laravel-engineering)
- [server-troubleshooting](https://github.com/multexpk-labs/server-troubleshooting)
- [cloud-infrastructure](https://github.com/multexpk-labs/cloud-infrastructure)
- [whmcs-engineering](https://github.com/multexpk-labs/whmcs-engineering)

---

## MULTEXPK LABS
**Zain Ul Abddin — Founder, MULTEXPK LTD ®™**

Technical education, AI/LLM research, infrastructure engineering, and practical software development.

**MULTEXPK LTD ®™ – Secure Cloud • VPS • Hosting • Automation**
https://multexpk.com | https://webvpsserver.com | WhatsApp: +92 312 6565434 | support@multexpk.com