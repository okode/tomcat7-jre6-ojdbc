# tomcat7-openjdk6-ojdbc
Docker container repo for a simple tomcat stack using jre6, tomcat7 and ojdbc driver deployed

# Building

    $ docker build . -t tomcat7-openjdk6-ojdbc

# Running

    $ docker run -d -p 8080:8080 tomcat7-openjdk6-ojdbc

Open http://localhost:8080/manager with user 'admin' and password 'admin'.
