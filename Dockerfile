FROM openjdk:8-jdk-alpine
LABEL Martin van Velsen <martinv@andrew.cmu.edu>
RUN apk add --no-cache curl tar bash procps
COPY ./java/lib /app
WORKDIR /app
CMD ["java -cp "lib/ctat.jar:." edu.cmu.pact.TutoringService.DatashopLogService $*"]
