# Backend Patterns

## Service Boundary

A useful structure is:

`Controller/API → Validation → Service → Repository/Data Access → Database`

The exact architecture can vary, but responsibilities should remain understandable and testable.

## Idempotency

Operations triggered by retries, webhooks, queues, or clients need a strategy for preventing unintended duplicate effects. Common mechanisms include idempotency keys, unique constraints, state-transition checks, and durable event identifiers.

## Error Handling

Return safe client-facing errors while logging enough structured context for diagnosis. Never expose credentials, SQL secrets, stack traces, or internal infrastructure details to untrusted clients.
