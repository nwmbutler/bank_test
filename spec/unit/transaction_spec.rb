require 'transaction'

describe Transaction do

  it "formats for IRB, with date, credit, debit, balance" do
    date = Time.now.strftime("%d/%m/%Y")
    statement = Transaction.new(credit: 1000, debit: 0, balance: 1000)
    expect(statement.format).to eq("#{date} || 1000 || 0 || 1000")
  end

end
