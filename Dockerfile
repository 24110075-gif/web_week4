# ---- Build stage ----
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package -DskipTests -q

# ---- Run stage ----
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Copy fat jar
COPY --from=build /app/target/app.jar ./app.jar

# Copy webapp resources (JSP, CSS, HTML - needed by embedded Tomcat)
COPY --from=build /app/src/main/webapp ./src/main/webapp

# Copy compiled classes (AppLauncher copies these to WEB-INF/classes at startup)
COPY --from=build /app/target/classes ./target/classes

# Render sets PORT automatically, default 8080
EXPOSE 8080

# Run the fat jar
CMD ["java", "-jar", "app.jar"]
