#!/bin/bash

case ${JAVA_VERSION} in
    java8)
	JAVA_PATH="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.412.b08-2.el8.x86_64/jre/bin/java"
	alternatives --set java "${JAVA_PATH}"
        ;;
    java11)
	JAVA_PATH="/usr/lib/jvm/java-11-openjdk-11.0.23.0.9-3.el8.x86_64/bin/java"
	alternatives --set java "${JAVA_PATH}"
        ;;
    java17)
	JAVA_PATH="/usr/lib/jvm/java-17-openjdk-17.0.11.0.9-2.el8.x86_64/bin/java"
	alternatives --set java "${JAVA_PATH}"
        ;;
    java21)
	JAVA_PATH="/usr/lib/jvm/java-21-openjdk-21.0.3.0.9-1.el8.x86_64/bin/java"
	alternatives --set java "${JAVA_PATH}"
	;;
    *)
        echo -e "Use the environment to set the default Java version on the system."
        echo -e ""
        echo -e "Options:"
        echo -e "  java8    Set default Java version to Java 8"
        echo -e "  java11   Set default Java version to Java 11"
        echo -e "  java17   Set default Java version to Java 17"
        echo -e "  java21   Set default Java version to Java 21"
        echo -e ""
        echo -e "Example, to set Java 11 as the default version:"
        echo -e "  docker run -dit -e JAVA_VERSION=java11 --name maven crizchien/alpine-maven:latest"
        exit 1
        ;;
esac
   
/bin/bash
