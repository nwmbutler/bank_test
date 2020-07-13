class Account

BASE_BALANCE = 0

  def initialize
    @balance = BASE_BALANCE
    @transactions = []
  end

  def deposit(int)
    @balance += int
    @transactions.push(int)
  end

  def withdraw(int)
    @balance -= int
  end

end
