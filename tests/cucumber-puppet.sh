#!/bin/bash

# script used to run all cucumber-puppet scenarios
# and display their output in jenkins.
# if you don't neef the output you can just add 
# the ruby test in jenkins

ruby tests/cucumber-puppet.rb
SUCCESS=$?
cat cucumber.out
if [ $SUCCESS -eq 0 ]
then
echo "SUCCESS"
   exit $SUCCESS
elif [ $SUCCESS -eq 1 ]
then
echo "UNSTABLE"
   exit $SUCCESS
else
echo "FAILURE"
   exit $SUCCESS
fi
