#!/bin/bash

####################################################################################################
############################################# CONSTANTS ############################################
####################################################################################################

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m'

####################################################################################################
############################################# FUNCTIONS ############################################
####################################################################################################

function validate_val() {
  local variable_name=$1
  local variable=$2

  if [ -z "$variable" ] || [ $variable == "null" ]; then
    print_header $RED "No '${variable_name}' provided. This value is required. Received: '$variable'"
    echo ""
    exit 1
  else
    print_header $GREEN "$variable_name '$variable' accepted"
  fi
}

function print_header() {
    local colour=$1
    local txt=$2

    echo -e "${colour} -- ${txt} ${NC}"
}

####################################################################################################
############################################# EXECUTION ############################################
####################################################################################################

# Exit if a password is not present in the environment
validate_val "POSTGRES_PASSWORD" $POSTGRES_PASSWORD

# Run docker-compose to spin up the container in detached mode
(cd ../deploy && docker-compose up -d)
