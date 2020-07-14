require_relative './transaction.rb'

class Account

  TIME = Time.now

  def initialize(balance: 0, transaction: Transaction)
    @balance = balance
    @transaction_record = []
    @transaction = transaction
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

  def transaction
    puts @irb_topper, @transaction_record.map(&:format)
  end

  private

  def deposit_update(credit: nil, balance: nil)
    update = @transaction.new(credit: credit, balance: balance)
    @transaction_record.unshift(update)
  end

  def withdrawal_update(debit: nil, balance: nil)
    update = @transaction.new(debit: debit, balance: balance)
    @transaction_record.unshift(update)
  end

  attr_accessor :balance
end
