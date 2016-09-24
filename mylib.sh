 #!/bin/bash

filename="mylib.sh"

function execCmd() {
  fn="execCmd()"
  command2exec=$@
  log $filename $fn "INFO" "Execute command '$command2exec' now..."
  if  eval $command2exec ; then 
     log $filename $fn "INFO" "Command '$command2exec' executed successfully"
  else
     log $filename $fn "ERROR" "Command '$command2exec' failed with rc: $?"
     exit $?
  fi
}

function log() {
   fileName=$1
   functionName=$2
   logLevel=$3
   logMessage=$4
   day=$(date +%F)
   time=$(date +%T)
   secSince1970=$(date +%s)
   echo $secSince1970 $day $time $logLevel $fileName $functionName - $logMessage
}

