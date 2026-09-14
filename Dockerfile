# ---- Build Stage ----
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app

# Copy pom and source code
COPY pom.xml .
COPY src ./src

# Build the standard WAR file
RUN mvn clean package -DskipTests -q

# ---- Run Stage (Tomcat 10.1 on Java 17 for Jakarta EE 10 / Servlet 6.0) ----
FROM tomcat:10.1-jdk17-temurin

# Clean default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built WAR as ROOT.war so it serves directly from /
COPY --from=build /app/target/webapp_w4.war /usr/local/tomcat/webapps/ROOT.war

# Script to support Render dynamic PORT binding
RUN echo '#!/bin/sh' > /usr/local/bin/run-tomcat.sh && \
    echo 'if [ -n "$PORT" ]; then' >> /usr/local/bin/run-tomcat.sh && \
    echo '  sed -i "s/port=\"8080\"/port=\"$PORT\"/g" /usr/local/tomcat/conf/server.xml' >> /usr/local/bin/run-tomcat.sh && \
    echo 'fi' >> /usr/local/bin/run-tomcat.sh && \
    echo 'exec catalina.sh run' >> /usr/local/bin/run-tomcat.sh && \
    chmod +x /usr/local/bin/run-tomcat.sh

EXPOSE 8080

CMD ["/usr/local/bin/run-tomcat.sh"]
