require "money"

class BankAccount

  attr_reader :balance

  #Create a new BankAccount object with an
  # optional parameter to set and initial_amount
  def initialize(initial_amount = 0)
    @balance = initial_amount.to_money
  end

  def add_funds(additional_amount)
    @balance += additional_amount.to_money
  end

  def withdraw(amt)
    @balance -= amt.to_money
  end
end
