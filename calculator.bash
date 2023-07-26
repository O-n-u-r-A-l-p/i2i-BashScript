

# Function to calculate factorial
function factorial {
    num=$1
    if ((num <= 1)); then
        echo 1
    else
        echo $((num * $(factorial $((num - 1)))))
    fi
}

# Function to perform basic calculations
function calculate {
    operand=$1
    num1=$2
    num2=$3

    case "$operand" in
    "+")
        echo $((num1 + num2))
        ;;
    "-")
        echo $((num1 - num2))
        ;;
    "*")
        echo $((num1 * num2))
        ;;
    "/")
        echo "scale=2; $num1 / $num2" | bc
        ;;
    "%")
        echo $((num1 % num2))
        ;;
    "!")
        echo $(factorial $num1)
        ;;
    *)
        echo "Invalid operand!"
        exit 1
        ;;
    esac
}

# Main script starts here
read -p "Input calculation operand (+, -, *, /, %, !): " operand

# Check if the operand is '!'
if [ "$operand" == "!" ]; then
    read -p "Input number: " num1
else
    read -p "Input number1: " num1
    read -p "Input number2: " num2
fi

result=$(calculate "$operand" $num1 $num2)
echo "Result: $result"