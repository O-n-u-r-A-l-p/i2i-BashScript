#!/bin/bash

# Function to calculate factorial

factorial() {

    if (( $1 == 0 )); then

        echo 1

    else

        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))

    fi

}

# Function to perform the basic calculator operations

calculator() {

    read -p ">> Input calculation operand (+, -, *, /, %, !): " operand

    case "$operand" in

        "+")

            read -p ">> Input number1: " num1

            read -p ">> Input number2: " num2

            echo ">> Result: $(( num1 + num2 ))"

            ;;

        "-")

            read -p ">> Input number1: " num1

            read -p ">> Input number2: " num2

            echo ">> Result: $(( num1 - num2 ))"

            ;;

        "*")

            read -p ">> Input number1: " num1

            read -p ">> Input number2: " num2

            echo ">> Result: $(( num1 * num2 ))"

            ;;

        "/")

            read -p ">> Input number1: " num1

            read -p ">> Input number2: " num2

            echo ">> Result: $(( num1 / num2 ))"

            ;;

        "%")

            read -p ">> Input number1: " num1

            read -p ">> Input number2: " num2

            echo ">> Result: $(( num1 % num2 ))"

            ;;

        "!")

            read -p ">> Input number for factorial: " num

            echo ">> Result: $(factorial $num)"

            ;;

        *)

            echo ">> Invalid operand. Please try again."

            ;;

    esac

}

# Call the calculator function

calculator

