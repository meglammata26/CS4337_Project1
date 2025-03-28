March 27th 7:35pm
The goal of this project is the following:

- prompt user for an expression in prefix notation
- calculate result of the inputted expression
- maintain history of previous calculations
- handle user errors and invalid input
- be able to run in interactive mode and batch mode

Plan to implement following functions:

- Tokenize user input
- Parse the token
- Evaluate the expressions
- Store and manage history
- Implement interactive and batch mode
- Debug and error handling

March 27th 7:45pm
a. No new thoughts since last log
b. Plan to implement the Tokenize user input function:

- will take in user input of string and break it down into tokens such as numbers, operators, and previous expressions
- first, define the function tokenize
  - input: string
  - output: list of tokens
- need to handle whitespace, valid tokens like operators: +, -, \*, /; numbers; references to previous expressions
- error handling for invalid input
- write example test cases to test logic

Next Steps:

- ensure the output is in correct format
- next goal is to implement parsing the token
