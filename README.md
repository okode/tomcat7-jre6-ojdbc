# tomcat7-jre6-ojdbc
Docker container repo for a simple tomcat stack using jre6, tomcat7 and ojdbc driver deployed

# Building

    $ docker build . -t tomcat7-jre6-ojdbc

# Running

    $ docker run -d -p 8080:8080 tomcat7-jre6-ojdbc
