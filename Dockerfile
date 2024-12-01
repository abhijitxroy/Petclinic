# FROM openjdk:8u151-jdk-alpine3.7
# EXPOSE 8070
# ENV APP_HOME /usr/src/app
# COPY target/petclinic-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar
# WORKDIR $APP_HOME
# ENTRYPOINT exec java -jar app.jar

FROM openjdk:8
EXPOSE 8070
ADD target/petclinic.war petclinic.war
ENTRYPOINT ["java","-jar","/petclinic.war"]
