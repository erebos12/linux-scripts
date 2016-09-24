 #!/bin/bash

source mylib.sh

filename="mylib_test.sh"

function test_execCmd_validCommand() {
 mn="test_checkRC_validCommand()"
 echo "Test test_execCmd_validCommand..."
 execCmd "pwd"
 if [ $? -ne 0 ]; then 
     echo "Error in test $mn. Command must be successfully executed." 
     exit 1
 fi
 echo "$mn ended successfully" 
}

function test_execCmd_InvalidCommand() {
 mn="test_checkRC_InvalidCommand()"
 echo "Test test_execCmd_InvalidCommand..."
 execCmd "invalidCommand"
 if [ $? -eq 0 ]; then 
     echo "Error in test $mn. Command must end with errors" 
     exit 1
 fi
 echo "$mn ended successfully"
}

test_execCmd_validCommand
test_execCmd_InvalidCommand
