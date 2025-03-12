#!/bin/bash
. /etc/default/dcasmq
cd /var/lib/cas/cashub
. /etc/default/casconfig/cas-hub/ibase.env

exec java ${JAVA_OPTS} -ea -jar main-banc-dispacher-0.0.1-SNAPSHOT-spring-boot.jar 
