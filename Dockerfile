#This is very basic Dockerfile for running the Hello-world program using java:8 as base image.

#Here we are using java:8 as base image from Docker hub.
FROM java:8

#Here we are copying HelloWorld.java program from our local machine ("." means we are in the directory which contains HelloWorld.java program)
COPY HelloWorld.java .

#Here we are running java program. 
RUN javac HelloWorld.java

#Following command is to see the java version. Right now I have commented it.
#CMD ["/usr/bin/java", "-version"]

#These are the default executables for our image. 
CMD ["java","HelloWorld"]

