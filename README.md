# Winterval - PostgreSQL

## Purpose

Programmatically define & manage the schema of a PostgreSQL Database

## Structure

- Schema definitions and db connection handler in the `internal` directory
- Application under `cmd` directory
- Docker deployment files under `deploy` directory
- Docker init scripts under `build/Docker` directory


## Usage

- `make run` will re-compile the application binary
- `make rerun` will try and re-run an existing binary, or build one if it does not exist
