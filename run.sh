#!/bin/bash
if [[ ${MANAGER_USER} ]]; then
    echo "Manager username configuration detected, setting it"
    sed -i -e "s/username=\"admin\"/username=\"$MANAGER_USER\"/g" /opt/tomcat7/conf/tomcat-users.xml
fi
if [[ ${MANAGER_PASSWORD} ]]; then
    echo "Manager password configuration detected, setting it"
    sed -i -e "s/password=\"admin\"/password=\"$MANAGER_PASSWORD\"/g" /opt/tomcat7/conf/tomcat-users.xml
fi

source /opt/tomcat7/bin/catalina.sh run