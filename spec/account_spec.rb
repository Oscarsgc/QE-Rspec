require_relative '../account'
require 'spec_helper'

describe Account do

	before :each do
		@account = Account.new
	end

	describe '#balance' do
		it "reads a balance and returns it" do
			@account.balance=20
			expect(@account.balance).to eql 20
		end
	end

	describe '#minimum_balance' do
		it "account is created and default balance is 10" do
			expect(@account.minimum_balance).to eql 10.0
		end

		it "reads a minimum_balance and returns it" do
			@account.minimum_balance = 30.0
			expect(@account.minimum_balance).to eql 30.0
		end
	end

	describe '#balance' do
		it "reads a balance and returns it" do
			@account.balance = 20.0
			expect(@account.balance).to eql 20.0
		end
	end

	describe '#deposit' do
		it "adds a given ammount to the balance" do
			@account.balance = 20.0
			@account.deposit(10.0)
			expect(@account.balance).to eql 22.0#30.0
		end
	end

	describe '#withdraw' do
		it "subtracts a given ammount from the balance" do
			@account.balance = 20.0
			@account.withdraw(10.0)
			expect(@account.balance).to eql 10.0
		end
	end

  describe '#transfer_funds' do
		it 'shows an "InsufficientFundsException" when the difference between balance and a given ammount is less than the minimum balance' do
	 		@account.deposit(25.0)
      @auxiliar_account = Account.new
	 		expect {@account.transfer_funds(@auxiliar_account, 20)}.to raise_error(InsufficientFundsException)
    end

    it 'should show correct balance after doing a correct deposit in the origin account' do
      @account.deposit(50.0)
      @auxiliar_account = Account.new
      @account.transfer_funds(@auxiliar_account,20.0)
      expect(@account.balance).to eql 30.0
    end
    it 'should show correct balance after doing a correct deposit in the destination account' do
      @account.deposit(55.0)
      @auxiliar_account = Account.new
      @account.transfer_funds(@auxiliar_account, 20.0)
      expect(@auxiliar_account.balance).to eq 20.0
    end
  end
end