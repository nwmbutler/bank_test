class Account

  BASE_BALANCE = 0
  TIME = Time.now

  def initialize(balance: BASE_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(value)
    @balance += value
    @transactions.push({ TIME.strftime("%d/%m/%Y") => value })
  end

  def withdraw(value)
    @balance -= value
    @transactions.push({ TIME.strftime("%d/%m/%Y") => value })
  end

  def statement
    puts "date || credit || debit || balance"
    @transactions.each do |transaction|
      transaction.each do |key, value|
        puts "#{key}" " || " "#{value}" " || " "#{@balance}"
      end
    end
  end

  attr_accessor :balance
end
