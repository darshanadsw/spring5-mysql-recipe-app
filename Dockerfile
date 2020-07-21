FROM openjdk:11

WORKDIR '/app'

#COPY ./wait-for-it.sh ./
COPY ./target/spring5-mysql-recipe-app-0.0.1-SNAPSHOT.jar ./my-app.jar

#RUN ["chmod", "+x", "./wait-for-it.sh"]

#ENTRYPOINT ["./wait-for-it.sh", "db:3306", "--","java","-jar","-Dspring.profiles.active=dev","my-app.jar"]
CMD ["java","-jar","-Dspring.profiles.active=dev","my-app.jar"]





