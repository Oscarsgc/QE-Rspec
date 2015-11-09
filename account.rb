
require './insufficient_funds_exception'
class Account 
	attr_accessor :balance, :minimum_balance

	def initialize
		@minimum_balance = 10.0
    @balance = 0.0
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end

	def transfer_funds(destination, amount)
		if (@balance - amount) < @minimum_balance
			raise InsufficientFundsException
		end
		destination.deposit(amount)
		self.withdraw(amount)
	end
end