# Use the Flyway image as the base image
FROM flyway/flyway:10.15.0-alpine

# Set the working directory inside the container
WORKDIR /usr/src/flyway/

# Copy all files from the current directory on the host to the working directory in the container
COPY . .


# Run the flyway migrate command
CMD ["migrate"]
