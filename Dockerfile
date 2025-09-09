FROM eclipse-temurin:23-jre-alpine

WORKDIR /app

ENV APP_NAME="EXAM01"
ENV AUTHOR="Henry"
ENV VERSION="1.0.0"

COPY ./app.jar .
COPY ./poem.txt .

CMD ["java", "-jar", "/app/app.jar"]