#!/bin/bash
. /etc/default/dcasmq
cd /var/lib/cas/cashub


JAVA_OPTS="${JAVA_OPTS} -Xdebug -Xrunjdwp:transport=dt_socket,address=6543,server=y,suspend=n"
JAVA_OPTS="${JAVA_OPTS} -ea -Dcasmain.properties.filepath=file:/etc/default/casconfig/dcasmq.properties -Dws.properties.path=/etc/default/casconfig/ws-slave.properties" 
JAVA_OPTS="${JAVA_OPTS} -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote=true -Dcom.sun.management.jmxremote.port=9011" 

JAVA_OPTS="${JAVA_OPTS} -Dspring.config.location=file:/etc/default/casconfig/dapplication.properties" 
exec java ${JAVA_OPTS} -ea  -Djava.net.preferIPv4Stack=true -jar casHub.jar 
