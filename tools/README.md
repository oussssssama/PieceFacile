# PieceFacile Tools

## Purpose

This directory contains all development tools used to build and maintain the PieceFacile database.

The tools are never used by the mobile application.

They are used during development only.

## Structure

common/
Shared utilities.

generators/
Generate SQL seed files from official datasets.

validators/
Validate datasets before generating SQL.

## Workflow

Official Dataset

↓

Validation

↓

SQL Generation

↓

Database Seeds

↓

Supabase

