#!/bin/bash

(cd ..; ./gradlew clean && ./gradlew assemble check -x test) &&
docker-compose -f compose-infrastructure.yml build &&
docker-compose -f compose-infrastructure.yml  pull --ignore-pull-failures --parallel
