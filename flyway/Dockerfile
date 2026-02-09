# Flyway image with migrations baked in. Build context: flyway/
# Used by Kubernetes Job and Docker Compose to run migrations before the app.
FROM flyway/flyway:10
COPY src/main/resources/db/migration /flyway/sql
