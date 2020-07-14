require_relative './statement.rb'

class Account

  TIME = Time.now

  def initialize(balance: 0, statement: Statement)
    @balance = balance
    @transactions = []
    @statement = statement
    @irb_topper = "date || credit || debit || balance"
  end

  def deposit(value)
    @balance += value.round(2)
    deposit_update(credit: value.round(2), balance: @balance)
  end

  def withdraw(value)
    return 'insufficient funds' if @balance < value

    @balance -= value.round(2)
    withdrawal_update(debit: value.round(2), balance: balance)
  end

  def statement
    puts @irb_topper, @transactions.map(&:format)
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
