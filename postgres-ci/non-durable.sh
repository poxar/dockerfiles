#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	ALTER SYSTEM SET fsync TO off;
	ALTER SYSTEM SET synchronous_commit TO off;
	ALTER SYSTEM SET full_page_writes TO off;
	ALTER SYSTEM SET max_wal_size TO 320;
	ALTER SYSTEM SET checkpoint_timeout TO 3600;
EOSQL
