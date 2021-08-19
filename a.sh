#!/bin/bash

# $0 -> the name of the script itself.
# $1 -> Positional argument, first argument.
# ${10} -> when more than one digit in the argument.
# $# -> Argument count.
# $* -> Refers to all arguments.

# It wont print anything, but wont produce any error.
echo $undefinedVariable;

# It will assign the string to the variable, and print the value of the variable.
echo ${simpleVar=this is an example};

# If the variable is not set, use the default value, but it doesnt assign the default value.
echo "${simpleVar:-this is the default for simpleVar} and ${otherVar:-this is the default for otherVar}";

unset simpleVar

# If the variable is not set, assigns the default value to the variable and print it.
echo "${simpleVar:=this is the default value} and the value after assign: $simpleVar"

# To undefine a variable use "unset nameOfTheVariable"
unset simpleVar