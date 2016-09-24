 #!/bin/bash

filename="mylib.sh"

function execCmd() {
  mn="execCmd()"
  command2exec=$@
  echo "$filename - $mn - Execute command '$command2exec' now..."
  if  eval $command2exec ; then 
     echo "$filename - $mn - Command '$command2exec' executed successfully"
  else
     echo "$filename - $mn - '$command2exec' failed with rc: $?"
     exit $?
  fi
}
