# shell-calculator
calculator using Linux shell script. Following four operators are implemented
1 - Add (a)
2 - Subtract (s)
3 - Multiply (m)
4 - Divide (d)

Only two operands and one operator will be allowed. Each operand can only be a number between 1-100.

## How to run?
1. Open the command line interface in linux
2. 3. The code takes input from command line in the form 
                          2 a 3
3. run the command "bash calculator.sh" followed by arguments. i.e. the following format 
                    bash calculator.sh 2 a 3
                   
     ![](https://github.com/samrafakhar/shell-calculator/blob/main/Capture.PNG)

## How it works?
it uses a regex to check if the input is a number. for all other inputs (symbol or alphabets), it shows an error message.

if the number is not in range [1-100] it shows an error message in that case as well.

if there are less than 3 command line arguments, it displays an error message.

for an operator other than a, s, m, d its shows error that input is invalid
