require_relative 'bank_account_TDD'
RSpec.describe BankAccount do
    before(:each) do
        @acct1 = BankAccount.new
        @acct1.deposit('checking', 1000)
        @acct2 = BankAccount.new
        @acct2.deposit('savings', 500)
    end
    it 'has getter method for getting acct balance' do
        expect(@acct1.checking_account).to eq(1000)
        expect(@acct2.savings_account).to eq(500)
    end
    it 'has a getter method for getting total acct balance' do
        expect(@acct1.balance).to eq(1000)
        expect(@acct2.balance).to eq(500)
    end
    it 'has ability for user to withdraw cash' do
        @acct1.withdraw('checking', 100)
        expect(@acct1.checking_account).to eq(900)
    end
    it 'shows error if user attempts to withdraw more than in acct' do
       expect{ @acct2.withdraw('savings', 700) }.to raise_error(RuntimeError)
    end
    it 'raise an error when user tries to retrieve total num of accounts' do
        expect{ @acct1.bankaccounts }.to raise_error(NoMethodError)
    end

    it 'raise error if user tries to set interest rate' do
        expect{ @acct1.interest_rate = 0.05 }.to raise_error(NoMethodError)
    end
end