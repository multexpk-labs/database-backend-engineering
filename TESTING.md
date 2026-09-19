# Database Backend Testing

Use isolated test databases, containers, fixtures, or mocks rather than production systems.

Useful coverage includes migrations and schema constraints, repository/data-access behavior, transaction rollback, concurrency and duplicate-request protection, API contracts, idempotency, timeout/error handling, query regression checks, and backup/restore verification.

Public CI should use synthetic fixtures and disposable database instances.
