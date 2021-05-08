#!/bin/bash

# This script creates a tmux session if it doesn't exist

session_name="my_session"

tmux has-session -t ${session_name} 2>/dev/null
if [ "$?" -eq 1 ]; then
  
    echo "No tmux instance '${session_name}', creating it..."
    tmux new-session -d -s ${session_name}
    
    # ...do whatever with the created tmux
    # e.g. tmux send-keys "echo Hello world" Enter
    
fi
