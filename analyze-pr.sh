#!/bin/bash

mvn sonar:sonar \
    -Dsonar.projectKey=webgoat \
    -Dsonar.host.url=https://wad.eu.ngrok.io \
    -Dsonar.login=728aa4e559a71341eed7797582e370e32cd7b7cb \
    -Dsonar.pullrequest.base=master \
    -Dsonar.pullrequest.provider=github \
    -Dsonar.pullrequest.github.repository=sonar-ux-tests/WebGoat \
    -Dsonar.pullrequest.key=$1 \
    -Dsonar.pullrequest.branch=$2 \
    -Dsonar.security.sources.javasecurity.S2083=./config.json
