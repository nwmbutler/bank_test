class Transaction

  def initialize(date: nil, credit: nil, debit: nil, balance: nil)
    @credit = credit
    @debit = debit
    @balance = balance
    @date = date
  end

  def display
    "#{@date} || #{format(@credit)} || #{format(@debit)} || #{format(@balance)}"
  end

  def format(input)
    '%.2f' % input.to_f unless input.nil?
  end

end
