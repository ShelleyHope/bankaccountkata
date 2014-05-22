require 'receipt'
require 'money'

class BankAccount
	def initialize(balance=Money.zero)
	  @balance = balance
	end

	def withdrawl(amount, printer)
		raise if amount.biggerThan(@balance)
		@balance = @balance - amount
		printer.print(@balance, amount)
		@balance
	end

	def deposit(amount)
		@balance = @balance + amount
	end
end