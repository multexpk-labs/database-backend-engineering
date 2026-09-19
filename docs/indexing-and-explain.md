# Indexing & EXPLAIN

## Workflow

1. Capture the real query.
2. Measure its baseline.
3. Run `EXPLAIN`.
4. Identify scans, poor join order, sorting, or excessive rows examined.
5. Review existing indexes.
6. Change one thing at a time.
7. Measure again.

## Composite Indexes

Column order matters. Design indexes around real filtering, joining, and ordering patterns.

## Trade-offs

Indexes can improve reads while increasing write cost, storage usage, and maintenance work.