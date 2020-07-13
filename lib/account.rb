class Account
  def initialize
    @balance = [0]
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
