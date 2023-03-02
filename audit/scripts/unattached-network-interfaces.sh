#!/bin/bash

unused_network_interfaces () {
  echo Checking unattached network interfaces..
  local count=$(aws ec2 describe-network-interfaces  --region $1 --profile $2 --filters Name=status,Values=available | jq '.NetworkInterfaces | length')
  if [ $count -gt 0 ]
    then
    echo POSSIBLE PROBLEM: Network interfaces not attached $count
  fi
}