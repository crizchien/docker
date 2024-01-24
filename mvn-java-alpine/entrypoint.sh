#!/bin/ash
case ${JAVA_VERSION} in
    java8)
        unlink /usr/lib/jvm/default-jvm
        ln -s /usr/lib/jvm/java-1.8-openjdk /usr/lib/jvm/default-jvm
        ;;
    java11)
        unlink /usr/lib/jvm/default-jvm
        ln -s /usr/lib/jvm/java-11-openjdk /usr/lib/jvm/default-jvm
        ;;
    java17)
        unlink /usr/lib/jvm/default-jvm
        ln -s /usr/lib/jvm/java-17-openjdk /usr/lib/jvm/default-jvm
        ;;
    *)
        echo -e "Use the environment to set the default Java version on the system."
        echo -e ""
        echo -e "Options:"
        echo -e "  java8    Set default Java version to Java 8"
        echo -e "  java11   Set default Java version to Java 11"
        echo -e "  java17   Set default Java version to Java 17"
        echo -e ""
        echo -e "Example, to set Java 11 as the default version:"
        echo -e "  docker run -dit -e JAVA_VERSION=java11 --name maven crizchien/alpine-maven:latest"
        exit 1
        ;;
esac
   
ash
