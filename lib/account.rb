require_relative './statement.rb'

class Account

  BASE_BALANCE = 0
  TIME = Time.now
  IRB_TOPPER = "date || credit || debit || balance"

  def initialize(balance: BASE_BALANCE, statement: Statement)
    @balance = balance
    @transactions = []
    @statement = statement
  end

  def deposit(value)
    rounded = value.round(2)
    @balance += rounded
    deposit_update(credit: rounded, balance: @balance)
  end

  def withdraw(value)
    return 'insufficient funds' if @balance < value

    rounded = value.round(2)
    @balance -= rounded
    withdrawal_update(debit: rounded, balance: balance)
  end

  def statement
    puts IRB_TOPPER, @transactions.map(&:format)
  end

  private

  def deposit_update(credit: nil, balance: nil)
    update = @statement.new(credit: credit, balance: balance)
    @transactions.unshift(update)
  end

  def withdrawal_update(debit: nil, balance: nil)
    update = @statement.new(debit: debit, balance: balance)
    @transactions.unshift(update)
  end

  attr_accessor :balance
end
