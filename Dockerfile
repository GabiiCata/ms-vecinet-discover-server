FROM openjdk:21-jdk-buster

WORKDIR /app

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src

RUN chmod +x ./gradlew
RUN ./gradlew build

EXPOSE 8761

CMD ["java", "-jar", "build/libs/ms-vecinet-discovery-server-0.0.1.jar"]