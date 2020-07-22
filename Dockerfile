FROM openjdk:11

WORKDIR '/app'

ENV mysql_host localhost
ENV username root
ENV password root

COPY ./target/spring5-mysql-recipe-app-0.0.1-SNAPSHOT.jar ./my-app.jar

CMD ["java","-jar", "-Dspring.profiles.active=prod","-Dmysql.host=${ipaddress}","-Dmysql.user=${username}","-Dmysql.pass=${password}","my-app.jar"]
