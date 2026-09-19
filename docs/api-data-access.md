# API & Data Access

Use a clear boundary: `Request → Validation → Authorization → Service → Data Access → Database`.

For retryable operations use idempotency where appropriate, validate state transitions, set timeouts, avoid duplicate writes, and log correlation identifiers.