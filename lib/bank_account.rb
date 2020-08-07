class BankAccount
  attr_reader :current_balance

  def initialize(current_balance = 0)
    @current_balance = current_balance
  end

  def balance
    puts "Your current balance is: #{@current_balance}"
    @current_balance
  end

  def deposit(amount)
    puts "Deposit of #{amount} successful"
    @current_balance += amount
  end

  def withdraw(amount)
  end
end
