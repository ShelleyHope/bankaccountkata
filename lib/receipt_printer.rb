class ReceiptPrinter
  def print(balance, amount)
    puts "balance: #{@balance}, amount: #{@amount}, date: #{Time.now}"
  end
end