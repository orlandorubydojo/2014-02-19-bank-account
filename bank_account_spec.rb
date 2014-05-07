require "./bank_account.rb"

describe BankAccount do

  before(:each) do
    @ba = BankAccount.new(500)
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
      pending
    end
  end

  context "interest" do
    it "should calculate interest for a given number of months" do
      pending
    end

    it "should add interest to the balance for a given number of months" do
      pending
    end
  end

  it "should transfer money between two accounts" do
    pending
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
