#!/bin/bash

# A subshell is a child process launched by a shell.

(
    while [ 1 ]
    do
        echo "Running subshell process"
    done
)

echo $?;

# commands executed inside parentheses, will run in a subshell. Commands running inside a subshell, are not visible to the outside.
(echo "first"; echo "second";)

# When a command or the shell itself initiates (or spawns) a new subprocess to carry out a task, this is called forking.