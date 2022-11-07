FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY target/api-with-spring-boot-1.0-SNAPSHOT.jar springbootsimpleapimaster.jar
EXPOSE 3036
ENTRYPOINT exec java $JAVA_OPTS -jar springbootsimpleapimaster.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar springbootsimpleapimaster.jar
