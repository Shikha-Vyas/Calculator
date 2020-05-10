FROM openjdk:8-jdk-alpine

# File Author
MAINTAINER SHIKHA VYAS

# Copies the files from the source on the host into the container’s set destination
COPY "target/calculator-1.0-SNAPSHOT.jar"

RUN java -jar calculator-1.0-SNAPSHOT.jar < input_file

