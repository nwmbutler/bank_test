class Account
  def initialize
    @balance = 0
  end

  def deposit(int)
    @balance += int
  end

  def withdraw(int)
    @balance -= int
  end

end
