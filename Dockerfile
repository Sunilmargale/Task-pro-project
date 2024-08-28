#FROM amazoncorretto:17.0.8-alpine3.18
    
#EXPOSE 5000
 
#ENV APP_HOME /usr/src/app

#COPY target/*.jar $APP_HOME/app.jar

#WORKDIR $APP_HOME

#CMD ["java", "-jar", "app.jar"]

FROM openjdk:11-jre-slim
ENV APP_HOME=/usr/app
WORKDIR $APP_HOME
EXPOSE 5000
COPY target/*.jar $APP_HOME/app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
