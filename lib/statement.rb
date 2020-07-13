class Statement

  def initialize(credit: nil, debit: nil, balance: nil)
    @credit = credit
    @debit = debit
    @balance = balance
  end
  #
  # puts "date || credit || debit || balance"
  # @transactions.each do |transaction|
  #   transaction.each do |key, value|
  #     puts "#{key}" " || " "#{value}" " || " "#{@balance}"
  #   end
  # end
end
