require './lib/account'

describe 'using the account' do
  it 'allows user to deposit, withdraw funds and print statement' do
    account = Account.new
    account.deposit(1000)
    account.withdraw(500)
    date = Time.now.strftime("%d/%m/%Y")
    expect { account.statement }.to output(/date || credit || debit || balance\n#{date} ||  || 500 || 500\n#{date} || 1000 ||  || 1000/).to_stdout
  end
end
