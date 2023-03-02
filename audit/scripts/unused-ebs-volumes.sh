#!/bin/bash

unused_volumes () {
  echo Checking unused EBS volumes..
  local count=$(aws ec2 describe-volumes --region $1 --filters Name=status,Values=available --profile $2 | jq '.Volumes | length')
  if [ $count -gt 0 ]
    then
    echo POSSIBLE PROBLEM: Volumes not in use $count
  fi
}