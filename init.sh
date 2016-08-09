#!/bin/sh

echo "*** Fitnesse setup complete ***" ; \
java -jar /usr/fitnesse/target/fitnesse.with.rest-1.0-SNAPSHOT.jar $@
