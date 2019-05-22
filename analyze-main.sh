#!/bin/bash

mvn sonar:sonar \
    -Dsonar.projectKey=webgoat \
    -Dsonar.host.url=https://wad.eu.ngrok.io \
    -Dsonar.login=728aa4e559a71341eed7797582e370e32cd7b7cb
