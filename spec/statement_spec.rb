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

end
