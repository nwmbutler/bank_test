class Account

BASE_BALANCE = 0

  def initialize
    @balance = BASE_BALANCE
    @transactions = []
  end

  def deposit(int)
    @balance.push(int)
  end

  def withdraw(int)
    @temp = @balance.sum
    @temp -= int
    @balance = @temp
  end

end
