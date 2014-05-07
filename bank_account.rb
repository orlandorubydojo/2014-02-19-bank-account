require "money"

class BankAccount

  attr_reader :balance

  def initialize(initial_amount = 0)
    @balance = initial_amount.to_money
  end

  def add_funds(additional_amount)
    @balance += additional_amount.to_money
  end

  def withdraw(amount)
    @balance -= amount.to_money
    amount.to_money
  end

  def add_interest(months)
  end

  def calculate_interest(months)
  end

  # THINK: What does the 'self.' here mean?
  def self.transfer(from_account, to_account, amount)
  end

end
