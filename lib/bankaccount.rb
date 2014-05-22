require 'receipt'

class BankAccount
	def initialize(balance=0)
	  @balance = balance
	end

	def withdrawl(amount, printer)
		raise if amount > @balance
		@balance = @balance - amount
		printer.print(@balance, amount)
		@balance
	end

	def deposit(amount)
		@balance = @balance + amount
	end
end