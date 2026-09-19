-- Generic transaction example. Adapt syntax to the target database/application.
START TRANSACTION;
UPDATE accounts SET balance = balance - 10.00 WHERE id = 1 AND balance >= 10.00;
-- Application code should verify the affected-row count here.
UPDATE accounts SET balance = balance + 10.00 WHERE id = 2;
COMMIT;
