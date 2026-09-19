# Database & Backend Engineering

Practical research and engineering for reliable application data systems.

## Focus

- MariaDB / MySQL and relational database design
- Schema design, normalization, constraints, and relationships
- Indexing, query planning, and performance analysis
- Transactions, isolation, locking, deadlocks, and concurrency
- Migrations, backups, recovery, and replication concepts
- PHP/Laravel and ORM data access
- REST APIs, queues, jobs, idempotency, and observability
- Database security and least privilege

## Engineering Method

**Model → Implement → Measure → Diagnose → Optimize → Verify → Document**

Establish a baseline, inspect evidence, make controlled changes, then measure the result.

## Reference Architecture

`Client → API → Application Service → Data Access Layer → Database`

Supporting components may include queues/workers, caching, monitoring, logs, metrics, alerting, backups, and recovery systems.

## Data Modeling

Design around domain rules:

- Primary and foreign keys
- Unique constraints
- Intentional nullability
- Normalization and deliberate denormalization
- Lifecycle state and timestamps
- Referential integrity
- Indexes based on measured access patterns
- Migration and rollback strategy

See [data modeling](docs/data-modeling.md).

## Query Performance

Use evidence rather than intuition:

1. Capture the real query.
2. Measure a baseline.
3. Inspect `EXPLAIN`.
4. Review predicates, joins, ordering, grouping, and rows examined.
5. Evaluate existing indexes.
6. Change one thing at a time.
7. Measure again.

See [indexing and EXPLAIN](docs/indexing-and-explain.md).

## Transactions & Concurrency

Study ACID, isolation levels, row/gap locks, lock wait timeouts, deadlocks, atomic updates, optimistic/pessimistic concurrency, and idempotency.

Keep transactions short and avoid network calls inside them.

See [transactions and locking](docs/transactions-and-locking.md).

## Backend APIs

Define validation, authorization boundaries, consistent responses, pagination, timeouts, bounded retries, idempotency, structured errors, and correlation IDs.

A useful separation is:

`Controller/API → Validation → Service → Data Access → Database`

See [backend patterns](docs/backend-patterns.md).

## Backups & Recovery

Document:

- Backup scope
- Destination and retention
- Access controls and encryption
- RPO and RTO
- Restore procedure
- Restore-test frequency
- Post-restore verification

A backup that has never been restored is an unverified recovery mechanism.

See [backups and recovery](docs/backups-and-recovery.md).

## Practical Resources

- `schema.sql` — synthetic relational schema
- `query-examples.sql` — EXPLAIN and diagnostic examples
- `transaction-pattern.sql` — generic transaction pattern
- `db-host-check.sh` — host/database diagnostics
- `db_report.py` — JSON host resource report
- `TESTING.md` — test strategy

All examples are synthetic and contain no production data.

## Security

Never commit database passwords, API tokens, private keys, customer records, production dumps, session secrets, or internal connection strings.

Use environment variables or a secret manager, separate credentials by service, and least-privilege database accounts.

## Testing

Useful coverage includes migrations, constraints, data-access behavior, transaction rollback, concurrency, duplicate-request protection, API contracts, idempotency, timeout/error handling, query regression, and restore verification.

Public CI should use synthetic fixtures and disposable database instances.

## Research & Reimplementation

**Find → Clone → Inspect → Understand → Document → Reimplement → Test → Improve**

Public repositories are useful engineering references. Check licenses before reuse, preserve required attribution/notices, and write original implementations rather than copying proprietary code.

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