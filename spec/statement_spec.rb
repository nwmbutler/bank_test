require 'statement'

describe Statement do
  it "is an instance of Statement" do
    expect(subject).to be_a_kind_of Statement
  end

  it "initializes with credit, debit & balance = nil" do
    expect(subject.instance_variable_get(:@balance)).to eq nil
    expect(subject.instance_variable_get(:@credit)).to eq nil
    expect(subject.instance_variable_get(:@debit)).to eq nil
  end

  it "formats for IRB, with date, credit, debit, balance" do
    statement = Statement.new(credit: 1000, debit: 0, balance: 1000)
    expect(statement.format).to eq("13/07/2020 || 1000 || 0 || 1000")
  end

end
