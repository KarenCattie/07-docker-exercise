FROM openjdk:17

EXPOSE 8080

RUN mkdir -p /home/java-app

COPY ./build/libs/docker-exercises-project-1.0-SNAPSHOT.jar /home/java-app

# set default dir in /home/java-app dir, like cd /home/java-app
WORKDIR /home/java-app

# run the java app
CMD ["java", "-jar", "docker-exercises-project-1.0-SNAPSHOT.jar"]