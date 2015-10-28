require './insufficient_funds_exception'
class Account 
	attr_accessor :balance, :minimumBalance

	def initialize
		@minimum_balance = 10.0
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end

	def transfer_funds(destination, amount)
		if @balance - amount < minimumBalance
			raise new InsufficientFundsException
		end
		destination.deposit(amount)
		self.withdraw(amount)
	end

	def balance
		@balance
	end

	def minimum_balance
		@minimum_balance
	end	
end