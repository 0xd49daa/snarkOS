#!/bin/bash

# Start the first process
/aleo/start &
  
# Start the second process
/root/ssh.sh &
  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
