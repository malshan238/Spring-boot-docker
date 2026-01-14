# Lightweight Java 17 runtime image
FROM eclipse-temurin:17-jre

# Directory inside container
WORKDIR /app

# Copy the built jar into container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Spring Boot runs on 8080 by default
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
