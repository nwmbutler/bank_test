require 'transaction'
require 'timecop'

describe "Formats for IRB output" do
  before do
    Timecop.freeze(Time.local(1990))
  end

  after do
    Timecop.return
  end

  it "formats for IRB, with date, credit, debit, balance" do
    acc = Account.new
    date = DATE = Time.now.strftime("%d/%m/%Y")
    statement = Transaction.new(date: "#{date}", credit: 1000, debit: nil, balance: 1000)
    expect(statement.display).to eq("01/01/1990 || 1000.00 ||  || 1000.00")
  end
end
