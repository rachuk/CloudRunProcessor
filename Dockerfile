# Use the official Google Cloud Run runtime as a parent image
FROM gcr.io/google-appengine/standard
# Set the working directory to /app
WORKDIR /app

# Copy the project files to the container
COPY target/CloudRunProcessor-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose port 8080 to the host
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "-jar", "/app/app.jar"]

# Use the official maven/Java 8 image to create a build artifact.
# https://hub.docker.com/_/maven
