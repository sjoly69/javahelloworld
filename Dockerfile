
FROM java:8

LABEL maintainer="sjoly"
COPY src /home/root/javaHelloWorld/src
WORKDIR /home/root/javaHelloWorld
RUN mkdir /home/root/javaHelloWorld/bin
RUN javac -d bin src/HelloWorld.java
RUN echo "Hello World"
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
ENV FOO bar
