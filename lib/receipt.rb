class Receipt 

  def initialize(balance, amount)
    @balance = balance
    @amount = amount
  end

	def print
		"balance: #{@balance}, amount: #{@amount}, date: #{Time.now}"
  end

end