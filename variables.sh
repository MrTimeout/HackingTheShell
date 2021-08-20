#!/bin/bash

# path to the binary of the bash. /bin/bash typically.
echo "\$BASH = $BASH";

# path to the bash startup file to be read when a script is invoked.
echo "\$BASH_ENV = $BASH_ENV";

# indicate the subshell level. Addition to version 3.
echo "\$BASH_SUBSHELL = $BASH_SUBSHELL";

# Process ID of the current instance of Batch. This is not the same as the variable $$, but sometimes they have the same value.
echo "\$BASHPID = $BASHPID"; # It is available from bash 4.0

echo "Parent process: { \"BASH_SUBSHELL\": $BASH_SUBSHELL, \"BASHPID\": $BASHPID, \"\$\$\": $$ }";

(
    echo "Child process: { \"BASH_SUBSHELL\": $BASH_SUBSHELL, \"BASHPID\": $BASHPID, \"\$\$\": $$ }";
)

# We can prompt the version of the bash shell. It is an array of 6 elements or we can use $BASH_VERSION to prompt the full patch.
# We can use this variable to know which shell we are running, because sometimes the variable $SHELL is not well defined.
echo "\$BASH_VERSION = $BASH_VERSION";

for n in 0 1 2 3 4 5
do
    echo "\$BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}";
done