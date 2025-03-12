#!/bin/bash
. /etc/default/casconfig/cas-sms/ibase.env

java ${JAVA_OPTS} \
	-jar CasSMS-1.4.6.RELEASE-spring-boot.jar 
