require 'bank_account'

describe BankAccount do
  it 'can create an instance of bank account' do
    bank_account = BankAccount.new
    expect(bank_account).to be_kind_of(BankAccount)
  end
  
  # As a user I would like to be able to see my balance
  it { is_expected.to respond_to :balance }
  
  it 'returns an Integer value type' do
    expect(subject.balance).to be_a(Integer)
  end

  # As a user I would like to be able to deposit money into my bank account
  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'returns balance equal to deposited amount' do
    value = rand(1..10)
    expect(subject.deposit(value)).to eq subject.current_balance
  end

  # As a user I would like to be able to withdraw money from my bank account
  it { is_expected.to respond_to(:withdraw).with(1).argument }

  it 'returns a correct balance after a withdrawal' do
    balance = BankAccount.new(rand(1..10))
    value = rand(1...10)
    expect(balance.withdraw(value)).to eq balance.current_balance
  end
  
end