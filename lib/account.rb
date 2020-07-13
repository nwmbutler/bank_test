class Account

BASE_BALANCE = 0

  def initialize
    @balance = BASE_BALANCE
    @transactions = []
    @time = Time.now
  end

  def deposit(value)
    @balance += value
    @transactions.push({@time.strftime("%d/%m/%Y") => value})
  end

  def withdraw(value)
    @balance -= value
    @transactions.push({@time.strftime("%d/%m/%Y") => value})
  end

end
