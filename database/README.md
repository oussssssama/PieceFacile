# Database

This directory contains the production database implementation for PieceFacile.

The database is designed for PostgreSQL and Supabase.

## Directory Structure

```
database/
│
├── schema/
├── functions/
├── policies/
├── seeds/
├── views/
└── migrations/
```

## Responsibilities

### schema

Contains the database schema.

One SQL file per database table.

---

### functions

Contains PostgreSQL functions and triggers.

---

### policies

Contains Supabase Row Level Security (RLS) policies.

---

### seeds

Contains initial reference data.

---

### views

Contains SQL Views and Materialized Views.

---

### migrations

Contains versioned database migrations.

## Development Rules

- One table per SQL file.
- One responsibility per file.
- Keep SQL idempotent whenever possible.
- Never modify production data inside schema files.
- All structural changes must be documented before implementation.
