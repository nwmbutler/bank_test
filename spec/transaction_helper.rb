def deposit
  subject.deposit(1000)
end

def deposit_and_withdraw
  subject.deposit(1000)
  subject.withdraw(500)
end
