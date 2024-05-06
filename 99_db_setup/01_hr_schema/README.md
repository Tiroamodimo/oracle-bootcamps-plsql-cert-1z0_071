# Oracle Sample HR Schema
A collection of scripts to set up the sample HR schema in an Oracle database.

## Steps

To create this schema on your database:

1. Download the SQL files in this repository, using either the Git commands or manually downloading them (view file > raw > save as).
2. Open an IDE (e.g. SQL Developer) and connect to your database (container database).
3. Run script 01, which changes to the pluggable database and creates the new HR user.
4. Connect to the database as the new HR user.
5. Run script 02 to create the tables.
6. Run script 03 to populate the tables.
7. Run script 04 to create indexes and comments.

The schema is now set up!

## ERD

Here's the ERD of the HR schema used:

<img src="../00_00_repo_resources/readme_images/hr_schema_erd.png">

source: https://github.com/bbrumm/databasestar/tree/main/sample_databases/oracle_hr

[back to main readme](../../README.md)