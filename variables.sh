#!/bin/bash

# path to the binary of the bash. /bin/bash typically.
echo $BASH

# path to the bash startup file to be read when a script is invoked.
echo $BASH_ENV

# indicate the subshell level. Addition to version 3.
echo $BASH_SUBSHELL

# Process ID of the current instance of Batch. This is not the same as the variable $$, but sometimes they have the same value.
echo $BASHPID