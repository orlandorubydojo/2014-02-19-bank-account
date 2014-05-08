require "./bank_account.rb"

describe BankAccount do

  before(:each) do
    @ba = BankAccount.new(500, 0.02)
  end

  context "creating a new bank account" do
    it "should create a bank account" do
      ba = BankAccount.new
      expect(ba).to be_instance_of BankAccount
    end

    it "should have an initial balance" do
      expect(@ba).to be_instance_of BankAccount
      expect(@ba.balance).to eq(500)
    end

    it "should have an interest rate" do
      expect(@ba.interest_rate).not_to be_nil
      expect(@ba.interest_rate).to eq(0.02)
    end
  end

  context "interest" do
    it "should calculate interest for a given number of months" do
        expect(@ba.calculate_interest(1)).to eq(10)
        expect(@ba.calculate_interest(6)).to eq(63.08)
        expect(@ba.calculate_interest(12)).to eq(134.12)
    end

    it "should add interest to the balance for a given number of months" do
      expect{ @ba.add_interest(1)}.to change{@ba.balance}.  from(500).to(510)
      ba = BankAccount.new(500, 0.04)
      expect{ ba.add_interest(1)}.to change{ba.balance}.  from(500).to(520)
    end
  end

  it "should transfer money between two accounts" do
    pending
    ba1 = BankAccount.new(1000, 0.04)
    ba2 = BankAccount.new(500, 0.04)
    BankAccount.trasfer(ba1, ba2, 200)
    expect{ ba1.balance}.to eq(800)
    expect{ ba2.balance}.to eq(700)
  end

  it "should have amount as a money object" do
    amount = @ba.balance
    expect(amount).to be_instance_of Money
  end

  it "should respond to balance" do
    expect(@ba).to respond_to(:balance)
  end

  it "should add funds" do
    @ba.add_funds(100)
    expect(@ba.balance).to eq(600)
  end

  it "should withdraw funds" do
    expect(@ba.withdraw(50)).to eq(50)
    expect(@ba.balance).to eq(450)
  end

end
