FROM jenkins/jenkins:lts-alpine

USER root

RUN apk --no-cache add make

USER jenkins

RUN jenkins-plugin-cli --plugins docker-plugin