#!/bin/bash

mvn sonar:sonar \
    -Dsonar.projectKey=webgoat \
    -Dsonar.host.url=https://wad.eu.ngrok.io \
    -Dsonar.login=6372dba2c8b285d9e59da284914978b42a86ba53 \
    -Dsonar.pullrequest.base=master \
    -Dsonar.pullrequest.provider=github \
    -Dsonar.pullrequest.github.repository=sonar-ux-tests/WebGoat \
    -Dsonar.pullrequest.key=$1 \
    -Dsonar.pullrequest.branch=$2 \
    -Dsonar.security.sources.javasecurity.S2083=./config.json
