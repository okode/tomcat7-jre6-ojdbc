FROM openjdk:6

ADD http://apache.uvigo.es/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz /opt
ADD http://www.datanucleus.org/downloads/maven2/oracle/ojdbc6/11.2.0.3/ojdbc6-11.2.0.3.jar /opt/apache-tomcat-7.0.78/lib
COPY tomcat-users.xml /opt/apache-tomcat-7.0.78/conf/

EXPOSE 8080

CMD ["/opt/apache-tomcat-7.0.78/bin/catalina.sh", "run"]