#!/bin/bash

local_1 () {
        local VAR="Inside Function"
        echo $VAR
}

local_2 () {
        VAR="Outside the function"
}

local_1
local_2
echo "Value of VAR outside functions: $VAR"

