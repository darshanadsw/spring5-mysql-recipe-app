FROM openjdk:11
VOLUME /tmp
ADD target/spring5-mysql-recipe-app-0.0.1-SNAPSHOT.jar my-app.jar
RUN sh -c 'touch /my-app.jar'
ENV JAVA_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8787,suspend=n"
EXPOSE 8080 8787
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=prod -jar /my-app.jar" ]
