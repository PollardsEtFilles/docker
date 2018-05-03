#! /bin/bash

version=2.119
sha=$(curl -q -fsSL "https://repo.jenkins-ci.org/releases/org/jenkins-ci/main/jenkins-war/${version}/jenkins-war-${version}.war.sha256" )

docker build --file "Dockerfile" \
                 --build-arg "JENKINS_VERSION=$version" \
                 --build-arg "JENKINS_SHA=$sha" \
                 --tag "pef/jenkinsbase:latest" \
                 --tag "pef/jenkinsbase:$version" .

