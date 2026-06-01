#!/bin/bash

set -euo pipefail

echo "Start script"

echo "undefined variable (set -u)"
echo "VAR=$UNDEF_VAR"

echo "Test2 Testing command (set -e)"
ls /nonexistentfolder

echo "test3 pipe failure ( set -o pipefail )"
echo "Hello" | grep "Dan"
echo "End script”.  
