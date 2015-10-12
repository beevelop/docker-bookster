FROM beevelop/java
MAINTAINER Maik Hummel <m@ikhummel.com>
 
RUN apt-get update -qq && apt-get install git && \
    git clone https://github.com/Nixoxo/Bookster && \
    ./gradlew stage

EXPOSE 8080

CMD ["java $JAVA_OPTS -jar bookster-server.jar"]
