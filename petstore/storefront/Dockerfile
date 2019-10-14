FROM java:openjdk-8u111-alpine
RUN apk --no-cache add curl
COPY build/libs/*-all.jar storefront-all.jar
CMD java ${JAVA_OPTS} -jar storefront-all.jar
