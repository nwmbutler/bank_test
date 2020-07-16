require_relative './transaction.rb'

class Account

  DATE = Time.now.strftime("%d/%m/%Y")

  def initialize(balance: 0, transaction: Transaction)
    @balance = balance
    @transaction_record = []
    @transaction = transaction
    @irb_topper = "date || credit || debit || balance"
  end

  def deposit(value)
    @balance += value
    deposit_update(credit: value, balance: @balance)
  end

  def withdraw(value)
    return 'insufficient funds' if @balance < value

    @balance -= value
    withdrawal_update(debit: value, balance: balance)
  end

  def statement
    ascending = @transaction_record.reverse
    puts @irb_topper, ascending.map(&:display)
  end

  private

  def deposit_update(credit: nil, balance: nil)
    update = @transaction.new(date: DATE, credit: credit, balance: balance)
    @transaction_record.push(update)
  end

  def withdrawal_update(debit: nil, balance: nil)
    update = @transaction.new(date: DATE, debit: debit, balance: balance)
    @transaction_record.push(update)
  end

  attr_accessor :balance
end
