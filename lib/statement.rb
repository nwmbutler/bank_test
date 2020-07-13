class Statement

  DATE = Time.now.strftime("%d/%m/%Y")

  def initialize(credit: nil, debit: nil, balance: nil, date: DATE)
    @credit = credit
    @debit = debit
    @balance = balance
    @date = DATE
  end

  def format
    "#{@date} || #{@credit} || #{@debit} || #{@balance}"
  end

end
