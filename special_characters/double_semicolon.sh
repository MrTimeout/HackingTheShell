#!/bin/bash

# Usage:
#   - chmod +x double_semicolon.sh
#   - ./double_semicolon.sh (the args could be up, down, left, right or anything)

# If we want to assign a default value, we can use: ${1:-up}
variable=$1

# We can and must use the double semicolon in the case statement

case $variable in
  up)           echo "We are going to the top baby"         ;;
  down)         echo "We are going to the floor baby..."    ;;
  left | right) echo "We are moving to the side"            ;;
  *)            echo "Why don't you want to move?"          ;;
esac
