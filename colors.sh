#!/bin/bash
#
# More info here: https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
#
#
##############
### Colors ###
##############
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

NO_COLOR='\033[0m'

##################
### log levels ###
##################
DEBUG=("DEBUG" "$GREEN")
INFO=("INFO" "$WHITE")
WARN=("WARN" "$YELLOW")
ERROR=("ERROR" "$RED")

LOG_FORMAT_DATE='%Y-%m-%d %H:%M'

function print {
  test $# -lt 2 && { echo "something wrong trying to print"; exit 1; }
  color=$1
  msg=${@:2}

  printf "${color}$msg${NO_COLOR}\n"
}

function _log {
  test $# -lt 3 && { echo "something wrong trying to log"; exit 1; }
  log_level=$1
  log_color=$2
  log_message=${@:3}
  log_date=$(date +"$LOG_FORMAT_DATE")

  # This is the log format
  print ${log_color} "[${log_level}] [${log_date}] ${log_message}"
}

# Exported functions
function debug {
  _log ${DEBUG[0]} ${DEBUG[1]} $@
}

function info {
  _log ${INFO[0]} ${INFO[1]} $@
}

function warn {
  _log ${WARN[0]} ${WARN[1]} $@
}

function error {
  _log ${ERROR[0]} ${ERROR[1]} $@
}

