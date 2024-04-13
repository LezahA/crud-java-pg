FROM maven:3.9.6-eclipse-temurin-17-focal

# Set the working directory in the container
WORKDIR /app

# Clone the repository from GitHub
RUN git clone https://github.com/LezahA/crud-java-pg

# Set the working directory in the container
WORKDIR /app/crud-java-pg

# Change the branch
RUN git checkout main

# Download the lastest changes
RUN git pull origin main

# Build the application
RUN mvn clean package -Dmaven.compiler.source=17 -Dmaven.compiler.target=17
