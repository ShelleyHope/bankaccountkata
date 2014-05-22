class BankAccount

	def initialize(balance=0)
	  @balance = balance
	end

	def withdrawl(amount)
		raise if amount > @balance
		@balance = @balance - amount
	end

	def deposit(amount)
		@balance = @balance + amount
	end

	
end