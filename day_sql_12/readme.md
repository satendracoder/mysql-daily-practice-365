# Day 12 - MySQL Practice

## Topic: INDEX and Performance Basics

## Task 1: Create Table
Create a table named `users` with:
- user_id (INT, Primary Key)
- username (VARCHAR)
- email (VARCHAR)
- city (VARCHAR)

## Task 2: Insert Data
Insert sample user records into the table.

## Task 3: CREATE INDEX
Create an index on:
- username column
- city column

## Task 4: Query Using INDEX
Fetch user data using an indexed column.

## Task 5: DROP INDEX
Remove an index from the table.

## Key Concepts
- INDEX improves SELECT query performance
- INDEX is mainly used on columns frequently used in WHERE clause
- Too many indexes can slow down INSERT/UPDATE operations

## Learning Outcome
- CREATE INDEX
- DROP INDEX
- Understanding when to use indexes
