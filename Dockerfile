FROM openjdk:8-jre-alpine
WORKDIR /app
EXPOSE 30088
LABEL maintainer="pulak@gazelle.in"
COPY ./build/libs/register_user-0.0.1-SNAPSHOT.war register_user.war
ENTRYPOINT ["java","-war","register_user.war"]