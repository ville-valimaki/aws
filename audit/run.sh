#!/bin/bash

source ./scripts/unused-ebs-volumes.sh
source ./scripts/unattached-network-interfaces.sh

# echo Enter region for audit:
# read REGION
# echo Enter profile for audit:
# read PROFILE

# for quick default values
REGION=eu-north-1
PROFILE=vjvalima

echo Running audit with profile $PROFILE in region $REGION

unused_volumes $REGION $PROFILE
unused_network_interfaces $REGION $PROFILE