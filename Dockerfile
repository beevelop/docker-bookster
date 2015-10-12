FROM beevelop/java
MAINTAINER Maik Hummel <m@ikhummel.com>
 
WORKDIR /opt

RUN apt-get update -qq && apt-get install -y git && \
    git clone https://github.com/Nixoxo/Bookster && \
    cd Bookster && \
    ./gradlew stage

VOLUME /opt/Bookster/uploads

EXPOSE 8080

CMD cd /opt/Bookster && /usr/bin/java $JAVA_OPTS -jar bookster-server.jar
