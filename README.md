# Bank Account
This is the second time visiting this Dojo. The first time we implemented a basic bank account, with the ability to create an account, add funds, and remove funds. The original README can be found in the file 2014-02-19-README.md.

This time around, we are going to add a few more key features of bank accounts:

- Compound interest
- Transfers between accounts


## Existing Usage
```ruby
# Let's create an instance of our object with $500
ba = BankAccount.new(500)
=> #<BankAccount:0x007fb740be4818>

# We can add funds, let's add $100
ba.add_funds(100)
=> #<BankAccount:0x007fb740be4818>

# Great, now let's check out balance
ba.balance
=> #<Money fractional:60000 currency:USD> # $600

# We can also take money out, let's remove $50
ba.withdraw(50)
=> #<Money fractional:5000 currency:USD>
```

### Notes On Using The Money Gem
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

## Expected Usage

### Initialize an account with interest
```ruby
# BankAccount.new(initial_amount, interest)
ba = BankAccount.new(500, 0.02) # 2% interest
=> #<BankAccount:0x007fb740be4818>
```

### Add interest for a specified number of months
```ruby
# calculate_interest(months)
ba.calculate_interest(1)
=> #<Money fractional:1000 currency:USD> # returns the interest earned, $10

# add_interest(months)
ba.add_interest(1)
=> #<Money fractional:51000 currency:USD> # returns the balance, $510
```

### Transfer funds between two bank accounts
```ruby
# Initialize the other bank account
ba2 = BankAccount.new(100, 0.01)

# BankAccount.transfer(from_account, to_account, amount)
BankAccount.transfer(ba, ba2, Money.new(100)) # transfer $100 from account ba to account ba2
=> true

ba.balance
=> #<Money fractional:41000 currency:USD> # $410

ba2.balance
=> #<Money fractional:20000 currency:USD> # $200
```


## Additional Resources

- [RSpec cheat sheet](http://www.anchor.com.au/blog/2013/03/updated-rspec-cheatsheet/)
- [Calculating compound interest](http://en.wikipedia.org/wiki/Compound_interest#Simplified_calculation)
- [Ruby Money Gem](https://github.com/RubyMoney/money)

