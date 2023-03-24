FROM azul/zulu-openjdk-alpine:18

WORKDIR /app

COPY target/CloudRunProcessor-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/app.jar"]