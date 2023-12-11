# Use a base image with Java pre-installed
FROM openjdk:11

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Java application JAR file into the container
COPY ./target/myapp.jar .

# Expose the port the application runs on
EXPOSE 8000

# Define the command to run the application when the container starts
CMD ["java", "-jar", "myapp.jar"]
