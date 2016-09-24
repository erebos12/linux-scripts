 #!/bin/bash

source mylib.sh

filename="mylib_test.sh"

function test_execCmd_validCommand() {
 mn="test_checkRC_validCommand()"
 log $filename $mn "INFO" "Test test_execCmd_validCommand..."
 execCmd "pwd"
 if [ $? -ne 0 ]; then 
     log $filename $mn "ERROR" "Error in test. Command must be successfully executed." 
     exit 1
 fi
 log $filename $mn "INFO" "successfully completed" 
}

function test_execCmd_InvalidCommand() {
 mn="test_execCmd_InvalidCommand()"
 log $filename $mn "INFO" "Test test_execCmd_InvalidCommand..."
 execCmd "invalidCommand"
}

test_execCmd_validCommand
out=$(test_execCmd_InvalidCommand)
echo $out | grep ERROR 
if [ $? -ne 0 ]; then
    log $filename "test_execCmd_InvalidCommand" "ERROR" "Error in test. Command must end with error." 
    exit 1
fi
log $filename "test_execCmd_InvalidCommand" "INFO" "successfully completed" 
