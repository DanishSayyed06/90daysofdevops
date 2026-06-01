#!/bin/bash

greet () {
        local Name=$1
     if [ -z "$Name" ]; then
        read -p "Enter Name: " Name
        echo "Hello, $Name"
     fi
}

add () {
        read -p "Enter num1:" num1
        read -p "Enter num2:" num2
        SUM=$(( num1+num2 ))
        echo "Sum is: $SUM"
}
greet "$1"

add