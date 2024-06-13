# Use the Flyway image as the base image
FROM flyway/flyway:10.15.0-alpine

# Set the working directory inside the container
WORKDIR /usr/src/flyway/

# Copy all files from the current directory on the host to the working directory in the container
COPY . .

# Set environment variables for Flyway configuration
ENV FLYWAY_URL="jdbc:postgresql://host.docker.internal:5430/cve?sslmode=disable"
ENV FLYWAY_SCHEMAS="cve"
ENV FLYWAY_USER="cve"
ENV FLYWAY_PASSWORD="changeme"
ENV FLYWAY_LOCATIONS="filesystem:/usr/src/flyway/sql"

# Run the flyway migrate command
CMD ["migrate"]
