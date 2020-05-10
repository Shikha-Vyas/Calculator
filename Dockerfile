FROM openjdk:8-jdk-alpine

# File Author
MAINTAINER SHIKHA VYAS

# Copies the files from the source on the host into the container’s set destination
COPY ["target/devops_calculator-1.0-SNAPSHOT.jar","input_file","./"]

RUN java -jar calculator-1.0-SNAPSHOT.jar < input_file

