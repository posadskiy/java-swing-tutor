FROM maven:3.9.12-eclipse-temurin-25-alpine AS build
WORKDIR /app

# Copy the entire project (including all modules)
COPY . .

# Build only the service module and its dependencies
RUN --mount=type=cache,target=/root/.m2 \
    mvn clean install -pl service -am -DskipTests

FROM eclipse-temurin:25-jre
WORKDIR /app
COPY --from=build /app/service/target/service-*.jar /app/app.jar
ENV JAVA_OPTS=""
EXPOSE 8400
ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar /app/app.jar"]
