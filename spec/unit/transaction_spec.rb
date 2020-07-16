require 'transaction'

describe Transaction do

  it "formats for IRB, with date, credit, debit, balance" do
    date = Time.now.strftime("%d/%m/%Y")
    statement = Transaction.new(credit: 1000, debit: nil, balance: 1000)
    expect(statement.display).to eq("#{date} || 1000.00 ||  || 1000.00")
  end

end
