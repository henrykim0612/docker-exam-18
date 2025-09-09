FROM eclipse-temurin:23-jdk AS builder
WORKDIR /app
COPY ./Main.java .

RUN javac Main.java
RUN jar cfe app.jar Main Main.class


FROM eclipse-temurin:23-jre-alpine

WORKDIR /app

ENV APP_NAME="EXAM01"
ENV AUTHOR="Henry"
ENV VERSION="1.0.0"

COPY ./poem.txt .
COPY --from=builder /app/app.jar .

CMD ["java", "-jar", "/app/app.jar"]
