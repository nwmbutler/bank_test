class Account

  BASE_BALANCE = 0
  TIME = Time.now

  def initialize
    @balance = BASE_BALANCE
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
    return @transactions
  end

end
