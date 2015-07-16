FROM ubuntu:14.04
MAINTAINER Igor Platitsa "pl33g0r@gmail.com"

RUN apt-get update
RUN apt-get clean
RUN apt-get install -q -y openjdk-7-jre-headless && apt-get clean
ADD http://mirrors.jenkins-ci.org/war/1.620/jenkins.war /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

VOLUME /var/jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]
EXPOSE 8081
CMD [""]
