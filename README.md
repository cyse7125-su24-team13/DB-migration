
# Flyway DB Migration Repository

This repository contains database migration scripts managed by Flyway. Flyway is an open-source database migration tool that helps to version control your database schema and apply changes consistently across different environments.

## Features

- Version control for database schema.
- Consistent and reliable schema migrations.
- Support for multiple database systems.
- Integration with CI/CD pipelines.

## Prerequisites

- Flyway (CLI, Docker, or any other supported method)
- PostgreSQL database (or any other supported database system)

## Setup

### Local Setup

1. **Clone the repository:**

   ```sh
   git clone https://github.com/yourusername/flyway-db-migration.git
   cd flyway-db-migration
   docker pull flyway/flyway
   
   flyway migrate
   
   flyway undo

