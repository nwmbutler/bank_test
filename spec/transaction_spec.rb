require 'transaction'

describe Transaction do
  it "is an instance of Transaction" do
    expect(subject).to be_a_kind_of Transaction
  end

  it "initializes with credit, debit & balance = nil" do
    expect(subject.instance_variable_get(:@balance)).to eq nil
    expect(subject.instance_variable_get(:@credit)).to eq nil
    expect(subject.instance_variable_get(:@debit)).to eq nil
  end

  it "formats for IRB, with date, credit, debit, balance" do
    date = Time.now.strftime("%d/%m/%Y")
    statement = Transaction.new(credit: 1000, debit: 0, balance: 1000)
    expect(statement.format).to eq("#{date} || 1000 || 0 || 1000")
  end

end
