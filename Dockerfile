FROM openjdk:6

ADD http://apache.uvigo.es/tomcat/tomcat-7/v7.0.78/bin/apache-tomcat-7.0.78.tar.gz /opt/
RUN mkdir /opt/tomcat7 
RUN tar -xzf /opt/apache-tomcat-7.0.78.tar.gz -C /opt/tomcat7 --strip-components=1
RUN rm -f /opt/apache-tomcat-7.0.78.tar.gz
ADD http://www.datanucleus.org/downloads/maven2/oracle/ojdbc6/11.2.0.3/ojdbc6-11.2.0.3.jar /opt/tomcat7/lib
COPY tomcat-users.xml /opt/tomcat7/conf/
COPY run.sh /opt/tomcat7/bin/

EXPOSE 8080

CMD ["/opt/tomcat7/bin/run.sh"]