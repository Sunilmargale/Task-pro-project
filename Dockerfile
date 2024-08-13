FROM amazoncorretto:17.0.8-alpine3.18
    
EXPOSE 5000
 
ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]
