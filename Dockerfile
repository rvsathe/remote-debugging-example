FROM java:8-jdk-alpine

COPY ./build/libs/remotedebug-0.0.1-SNAPSHOT.jar /usr/app/remotedebug-0.0.1-SNAPSHOT.jar
WORKDIR /usr/app
ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005

RUN sh -c 'touch remotedebug-0.0.1-SNAPSHOT.jar'

ENTRYPOINT ["java","-jar","remotedebug-0.0.1-SNAPSHOT.jar"]

