 #!/bin/bash

filename="mylib.sh"

function execCmd() {
  mn="execCmd()"
  command2exec=$@
  echo "$filename - $mn - Execute command '$command2exec' now..."
  eval $command2exec
  if [ $? -ne 0 ]; then 
     echo "$filename - $mn - '$command2exec' failed with rc: $?"
     exit $? 
  fi
  echo "$filename - $mn - Command '$command2exec' executed successfully"
}
