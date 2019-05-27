#!/bin/bash

mvn sonar:sonar \
    -Dsonar.projectKey=webgoat \
    -Dsonar.host.url=https://wad.eu.ngrok.io \
    -Dsonar.login=6372dba2c8b285d9e59da284914978b42a86ba53
