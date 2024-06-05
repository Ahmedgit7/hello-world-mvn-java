#!/bin/bash
if [[ "$RUN_SONARQUBE" == "YES" ]]; then
    echo Running SonarQube analysis...
    mvn clean verify sonar:sonar \
        -Dsonar.projectKey=demo \
        -Dsonar.host.url=http://13.201.53.198:9000 \
        -Dsonar.login=squ_2f217b09857d7c2af399d2b22f807de615667451
else
    echo Skipping SonarQube analysis...
fi
