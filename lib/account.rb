require_relative './statement.rb'

class Account

  BASE_BALANCE = 0
  TIME = Time.now

  def initialize(balance: BASE_BALANCE, statement: Statement)
    @balance = balance
    @transactions = []
    @statement = statement
  end

  def deposit(value)
    @balance += value
    @transactions.push({ TIME.strftime("%d/%m/%Y") => value })
  end

  def withdraw(value)
    return 'Your funds are insufficient' if @balance < value
    
    @balance -= value
    @transactions.push({ TIME.strftime("%d/%m/%Y") => value })
  end

  def update_statement
    return 1000
  end

  attr_accessor :balance
end
