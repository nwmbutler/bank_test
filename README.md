# Bank tech test

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

# Approach

## I see three main things the program needs to be able to do to satisfy the Acceptance criteria.
* Deposit - call deposit on the account with an amount as argument.
* Withdraw - call withdraw on the account with an amount as argument.
* Statement - call statement on the account, no argument, to print the output.

### See the Domain model and CRC cards below for how I think this will work.

# Domain Modelling

<br>
<p align="center">
<img src="images/domain_model.png" width="75%">
<br><br>
  Domain model.
</p>
<br>
<p align="center">
<img src="images/crc.png" width="30%">
<br><br>
  CRC cards.
</p>

## User stories

```
As a customer
So that I can protect my money
I want to be able to deposit funds in an account
```
```
As a customer
So that I can spend my money
I want to be able to withdraw funds in an account
```
```
As a customer
So that I can manage my money
I would like to be able to print a nicely formatted statement
```
### Testing
* Testing was done with RSPEC - all tests are passing
* Coverage is with SimpleCov - coverage is at 98.78%
* Linting performed with Rubocop - 6 files inspected, no offenses detected

### Installation
* Clone the repo https://github.com/nwmbutler/bank_test.git
* ```$ bundle install``` to install dependencies
* ```$ rspec``` to run tests and see coverage
* ```$ rubocop``` to run linter
* ```$ irb -r './lib/account.rb'``` - launches IRB ready of input of below

## IRB Spark
```
acc = Account.new
acc.deposit(1000)
acc.deposit(2000)
acc.withdraw(500)
acc.statement
```
* from this input the output will be:
<br>
<p align="center">
<img src="images/irb_output.png" width="30%">
<br><br>
  IRB output.
</p>

### Changes from feedback
* Instructions to run rspec and rubocop added to README (14/7/2020)
* Statement class renamed to Transaction class for clarity (14/7/2020)
* Unit test for statement method added (15/7/2020)
* Feature test for user interaction added (15/7/2020)
