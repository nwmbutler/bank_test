require 'statement'

describe Statement do
  it "is an instance of Statement" do
    expect(subject).to be_a_kind_of Statement
  end

  it "returns the top line of the statement" do
    expect(subject.formatter).to eq("date || credit || debit || balance")
  end

end
