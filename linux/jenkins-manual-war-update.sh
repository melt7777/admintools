#!/bin/bash
# Manually update jenkins with new war file

#backup old ver
cd /usr/lib/jenkins
cp jenkins.war jenkins.war.backup
rm jenkins.war
#get new 

wget https://updates.jenkins-ci.org/latest/jenkins.war
echo "Now need to run: sudo systemctl restart jenkins"
sudo systemctl restart jenkins
