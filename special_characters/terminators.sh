#!/bin/bash

# Usage:
#   - Evaluates the input string that you write
#   - chmod +x terminators.sh
#   - ./terminators.sh "string here baby"

DEFAULT_INPUT="0"

input=${1:-DEFAULT_INPUT}

case $input in
  [[:ascii:]]* )    echo "$input is an ascii"           ;;&
  [[:alnum:]]* )    echo "$input is an alphabet/number" ;;&
  [[:alpha:]]* )    echo "$input is an alphabet"        ;;&
  [[:lower:]]* )    echo "$input is lower"              ;;
  [[:upper:]]* )    echo "$input is upper"              ;;
  [[:blank:]]* )    echo "$input is blank"              ;;
  [[:digit:]]* )    echo "$input is a digit"            ;&
  @@@@@@@@@@@  )    echo "I am executing because ;&"    ;;
  *            )    echo "What do you want?"            ;;
esac
