#uygulama calismasiicin jdk lazim

FROM openjdk:17

ARG  JAR_FILE=target/*.jar

COPY ${JAR_FILE} devops-hello-app.jar

CMD apt-get update
CMD apt-get-upgrade -y

EXPOSE 8080

ENTRYPOINT ["java","-jar","devops-hello-app.jar"]




