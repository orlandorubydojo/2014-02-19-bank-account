### Bank Account Dojo - 2014/02/19
The goal of this Dojo is to create a BankAccount class that we can perform expected actions on.

## Expected Usage
This is the gist of it...
```ruby
# Let's create an instance of our object
ba = BankAccount.new(500)
=> #<BankAccount:0x007fb740be4818>

# We can add funds
ba.add_funds(100)
=> #<BankAccount:0x007fb740be4818>

# Great, now let's check out balance
ba.balance
=> #<Money fractional:60000 currency:USD>

# We can also take money out
ba.withdraw(50)
=> #<Money fractional:5000 currency:USD>

# Calculate interest
# Formula
# future_value = present_value * ((1 + interest_rate) ^ number_of_periods)
ba.calculate_interest(12, 0.03)
=> #<Money fractional:78400 currency:USD>
```

We can assume our bank account will use a [simplified method](http://en.wikipedia.org/wiki/Compound_interest#Simplified_calculation) of calculating interest.


Money gem usage
```ruby
# Turns the number 10 into $10
x = 10.to_money

# Turns the number 10 into $0.10
Money.new(10)

# Can do arithmetic on Money objects
x * 2
=> #<Money fractional:2000 currency:USD>

x < 15
=> true

# Can get the number of cents from Money objects (to store as an integer, perhaps)
x.cents
=> 1000
```

The RSpec cheat sheet used can be found [here](http://www.anchor.com.au/blog/2013/03/updated-rspec-cheatsheet/).
