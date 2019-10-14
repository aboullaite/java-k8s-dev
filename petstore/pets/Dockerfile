FROM java:openjdk-8u111-alpine
RUN apk --no-cache add curl
COPY build/libs/*-all.jar pets-all.jar
CMD java ${JAVA_OPTS} -jar pets-all.jar
