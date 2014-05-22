class Receipt 

  def initialize(balance)
    @balance = balance
  end

	def print
		"balance: #{@balance}, date: #{Time.now}"
	end
end