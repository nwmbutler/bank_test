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
    deposit_update(credit: value, balance: @balance)

  end

  def withdraw(value)
    return 'Your funds are insufficient' if @balance < value

    @balance -= value
    withdrawal_update(debit: value, balance: balance)
  end

  def statement

  end

  private

  def deposit_update(credit: nil, balance: nil)
    update = @statement.new(credit: credit, balance: balance)
    @transactions.push(update)
  end

  def withdrawal_update(debit: nil, balance: nil)
    update = @statement.new(debit: debit, balance: balance)
    @transactions.push(update)
  end

  attr_accessor :balance
end
