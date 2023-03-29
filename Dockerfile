FROM arm64v8/alpine:latest

RUN apk add --no-cache openjdk17

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk

ENV PATH="${JAVA_HOME}/bin:${PATH}"

EXPOSE 8080

COPY target/Homework_REST-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]