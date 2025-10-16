FROM maven:3.9.11-eclipse-temurin-17-alpine as BUILD
WORKDIR /app
COPY . .
RUN mvn -DskipTests package

FROM eclipse-temurin:17-jre-alpine
WORKDIR /run
COPY --from=BUILD /app/target/sysfoo*.jar sysfoo.jar
EXPOSE 8081
CMD java -jar /run/sysfoo.jar
