# TASK- 4




This task is perform on a sample database firstly i created h sample database then a table after that i drop the database and restore it. All these are done by step by step. Below is the script and the documentation of the task.

✅**1: Create Sample Database**

psql -U postgres

-- In psql shell:

CREATE DATABASE sample_db; \c sample_db

CREATE TABLE employees

( id SERIAL PRIMARY KEY,

name VARCHAR(50),

position VARCHAR(50)
);

INSERT INTO

employees

(name, position)

VALUES ('Alice', 'Manager'), ('Bob', 'Developer');

\q

After creating database in pgadmin after that we run all these backup, drop and recovery commamd in command prompt (cmd)

**✅ 2: Backup Database**

pg_dump -U postgres -F c -b -v -f sample_db.backup sample_db

**✅ 3: Drop the Database** 

dropdb -U postgres sample_db

**✅ 4: Restore the Database** 

createdb -U postgres sample_db pg_restore -U postgres -d sample_db -v sample_db.backup

## DOCUMENTATION OF THE PROCESS
**1. Backup Process**

PostgreSQL:

Use pg_dump in custom format (-F c) to allow compressed and portable backups.

Backup includes schema and data.

Custom format allows for more granular restoration (e.g., specific tables).

**2. Recovery Process**

PostgreSQL:

Use pg_restore for custom-format backups.

Can restore into an existing or newly created database.

Optionally drop and recreate the target database before restoring.


