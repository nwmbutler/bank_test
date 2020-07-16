require 'account'
require 'timecop'

describe Account do

  let(:account) { Account.new }
  let(:deposit) { account.deposit(1000) }
  let(:withdraw) { account.withdraw(500) }

  it "adds deposit to balance" do
    deposit
    expect(account.instance_variable_get(:@balance)).to eq(1000)
  end

  it "deducts withdrawal from balance" do
    deposit
    withdraw
    expect(account.instance_variable_get(:@balance)).to eql(500)
  end

  it "adds the withdrawal to the transactions" do
    deposit
    withdraw
    expect(account.instance_variable_get(:@balance)).to eq(500)
  end

  it "displays a nicely formatted statement" do
    expect { account.statement }.to output(/"date || credit || debit || balance"/).to_stdout
  end
end
