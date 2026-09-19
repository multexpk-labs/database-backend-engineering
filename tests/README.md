# Testing Strategy

Use isolated test databases, containers, fixtures, or mocks rather than production systems.

Useful tests include migrations, constraints, repositories/data access, transaction rollback, API contracts, idempotency, timeout/error handling, query regression, and backup/restore verification.

Public CI should use synthetic fixtures and disposable database instances.