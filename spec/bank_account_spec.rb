require 'bank_account'

describe BankAccount do
  
  # As a user I would like to be able to see my balance
  it { is_expected.to respond_to :balance }
  
  it 'returns an Integer value type' do
    expect(subject.balance).to be_a(Integer)
  end

  # As a user I would like to be able to deposit money into my bank account
  it { is_expected.to respond_to(:deposit).with(1).argument }

  it 'returns a deposit confirmation' do
    value = rand(1..10)
    expect(subject.deposit(value)).to eq value
  end

  it 'returns balance equal to deposited amount' do
    value = rand(1..10)
    expect(subject.deposit(value)).to eq :current_balance
  end

  # As a user I would like to be able to withdraw money from my bank account
  
end