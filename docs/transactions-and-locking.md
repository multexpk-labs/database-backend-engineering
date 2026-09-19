# Transactions, Locking & Concurrency

## Core Concepts

Understand ACID properties, isolation levels, row/gap locks, lock wait timeouts, deadlocks, atomic updates, optimistic concurrency, and pessimistic locking.

## Practical Rules

- Keep transactions short.
- Lock only what must be protected.
- Access shared resources in a consistent order.
- Avoid network calls inside database transactions.
- Make retries bounded and observable.
- Make externally triggered writes idempotent where possible.

## Deadlock Investigation

Capture database diagnostics, identify competing transactions and lock order, then change the access pattern deliberately. Do not hide contention by only increasing timeouts.
