#!/bin/bash
if [[ ${MANAGER_USER} ]]; then
    echo "Manager username configuration detected, setting it to $MANAGER_USER"
    sed -i -e "s/username=\"admin\"/username=\"$MANAGER_USER\"/g" /opt/tomcat7/conf/tomcat-users.xml
fi
if [[ ${MANAGER_PASSWORD} ]]; then
    echo "Manager password configuration detected, setting it"
    sed -i -e "s/password=\"admin\"/password=\"$MANAGER_PASSWORD\"/g" /opt/tomcat7/conf/tomcat-users.xml
fi
if [[ ${CONTEXT_CONFIG} ]]; then
    echo "Context file configuration detected, setting it"
    sed -i -e "s#</Context>#$CONTEXT_CONFIG</Context>#g" /opt/tomcat7/conf/context.xml
fi

echo "Setting manager max limit from 50MB to 100MB just in case"

sed -i -e "s/52428800/104857600/g" /opt/tomcat7/webapps/manager/WEB-INF/web.xml

source /opt/tomcat7/bin/catalina.sh run