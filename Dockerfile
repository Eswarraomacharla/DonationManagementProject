# Use JDK 21 as the base image
FROM eclipse-temurin:21-jdk AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY . /app/.

# Run Maven commands to build the project and resolve dependencies
RUN chmod +x ./mvnw && ./mvnw -DoutputFile=target/mvn-dependency-list.log -B -DskipTests clean dependency:list install
