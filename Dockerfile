FROM openjdk:11

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} service.jar

ENTRYPOINT ["java", "-jar", "/service.jar"]

EXPOSE 8080