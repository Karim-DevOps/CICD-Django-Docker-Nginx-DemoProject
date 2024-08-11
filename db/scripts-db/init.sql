-- Additional SQL commands to run after initial setup
ALTER ROLE pollinguser SET client_encoding TO 'utf8';
ALTER ROLE pollinguser SET default_transaction_isolation TO 'read committed';
ALTER ROLE pollinguser SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE pollingdb TO pollinguser;
