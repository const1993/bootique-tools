#!/usr/bin/env bash

JLINK_BIN=/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home/bin/jlink

MODULE_PATH=target/classes
MODULE_PATH="$MODULE_PATH:/Library/Java/JavaVirtualMachines/jdk-11.jdk/Contents/Home/jmods/"
MODULE_PATH="$MODULE_PATH:~/.m2/repository/io/bootique/bootique/0.26-SNAPSHOT/bootique-0.26-20180809.080148-96.jar"

$JLINK_BIN --module-path ${MODULE_PATH} \
    --add-modules io.bootique.tools --limit-modules io.bootique.tools --output target/jlink

