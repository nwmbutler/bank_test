require './lib/account'

describe Account do
  let(:deposit) { subject.deposit(1000) }
  let(:withdraw) { subject.withdraw(500) }

  it 'allows user to deposit, withdraw funds and print statement' do
    deposit
    withdraw
    subject.statement
    output = "date || credit || debit || balance\n15/07/2020 ||  || 500 || 500\n15/07/2020 || 1000 ||  || 1000"
    expect { subject.statement }.to output(/#{output}/).to_stdout
  end
end
