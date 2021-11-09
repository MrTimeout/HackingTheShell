#!/bin/bash

# It is used to write two or more commands in the same line
echo first; echo second

# Sometimes we have to scape the character
echo first\;\;; echo second

if [ -x semicolon.sh ]; then echo "done"; fi
