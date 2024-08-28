#FROM amazoncorretto:17.0.8-alpine3.18
    
#EXPOSE 5000
 
#ENV APP_HOME /usr/src/app

#COPY target/*.jar $APP_HOME/app.jar

#WORKDIR $APP_HOME

#CMD ["java", "-jar", "app.jar"]


# Use Amazon Corretto JDK 17 on Alpine Linux
FROM amazoncorretto:17.0.8-alpine3.18

# Expose the port that the application will run on
EXPOSE 5000

# Set the application directory
ENV APP_HOME /usr/src/app

# Create the application directory
WORKDIR $APP_HOME

# Copy the jar file from the target directory to the application directory
COPY target/*.jar $APP_HOME/app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]



