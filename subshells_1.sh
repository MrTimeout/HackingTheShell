#!/bin/bash

echo "Outer variable: ${outer_variable:=value of the outer variable} and the BASH_SUBSHELL: $BASH_SUBSHELL";

(
    echo "Outer variable inside before assigment: ${outer_variable:-it is not defined}";

    outer_variable="value of the outer variable inside";
    inside_variable="value of the inside variable inside";

    echo "Outer variable inside after assigment: ${outer_variable:-it is not defined} and the BASH_SUBSHELL: $BASH_SUBSHELL";

)

echo "Outer variable: ${outer_variable:-value of the outer variable} and the BASH_SUBSHELL: $BASH_SUBSHELL";
echo "Inside variable of the inside: ${inside_variable:-value of the inside variable} and the BASH_SUBSHELL: $BASH_SUBSHELL";

echo $BASHPID;

# outer_variable shares the same value with the children process when enterring inside it, but when it exists the process the variable recovers its value.
# inside_variable keeps inside the children process and cant access to the parent process.
# BASH_SUBSHELL keeps 0 in parent process and in subprocess gets to level 1.