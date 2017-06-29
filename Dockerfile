FROM openjdk:6

ADD http://apache.uvigo.es/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz /opt
RUN mv /opt/apache-tomcat-7.0.78 /opt/tomcat
ADD http://www.datanucleus.org/downloads/maven2/oracle/ojdbc6/11.2.0.3/ojdbc6-11.2.0.3.jar /opt/tomcat/lib

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]