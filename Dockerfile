#uygulama calismasiicin jdk lazim

FROM openjdk:17

ARG  JAR_FILE=target/*.jar

COPY ${JAR_FILE} apppipe.jar

CMD apt-get update
CMD apt-get-upgrade -y

EXPOSE 8081

ENTRYPOINT ["java","-jar","apppipe.jar"]




