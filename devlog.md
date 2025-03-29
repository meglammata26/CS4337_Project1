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

March 29th 4:30pm

- I was able to tokenize the string into a list tokens. I defined the tokenize function and made sure to incorporate error handling
  for empty strings and invalid characters. I also validated the tokens, such as operators, numbers, previous expressions, and handling whitespace. I wrote test cases to validate my logic and they passed. The main logic within this function is using a recursive loop, where
  it process remaining characters to the current-token being built and adding it to the list of tokens.
- I accomplished my goal for this session and will next work on parsing the tokens.

March 29th 4:37pm
a. No new thoughts
b. Plan to implement parse token function:

- parse any operators and operands
  - if the next character is a number, it is an operand
  - else it is an operator
- return expression
- error handling of an invalid tokens
- write example test cases to test logic

Next Steps:

- evaluating the expressions
