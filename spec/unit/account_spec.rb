require 'account'

describe Account do

  let(:account) { Account.new }
  let(:transaction) { Transaction }
  let(:deposit) { account.deposit(1000) }
  let(:withdraw) { account.withdraw(500) }

  it "adds deposit to balance" do
    deposit
    expect(account.instance_variable_get(:@balance)).to eq(1000)
  end

  it "rounds a deposit with more than 2 numbers after the decimal" do
    subject.deposit(45.993)
    expect(subject.instance_variable_get(:@balance)).to eq(45.99)
  end

  it "allows a withdrawal" do
    expect(subject).to respond_to(:withdraw).with(1).arguments
  end

  it "deducts withdrawal from balance" do
    deposit
    withdraw
    expect(account.instance_variable_get(:@balance)).to eql(500)
  end

  it "rounds a withdrawal with more than 2 numbers after the decimal" do
    deposit
    account.withdraw(45.993)
    expect(account.instance_variable_get(:@balance)).to eq(954.01)
  end

  it "adds the withdrawal to the transactions" do
    deposit
    withdraw
    expect(account.instance_variable_get(:@balance)).to eq(500)
  end

  it "displays a nicely formatted statement" do
    allow(transaction).to receive(:new).with(credit: 1000, debit: nil, balance: 1000)
    expect { account.statement }.to output(/"date || credit || debit || balance"/).to_stdout
  end

end
