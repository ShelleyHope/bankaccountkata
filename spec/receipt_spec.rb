require 'receipt'
describe	'Receipt' do

	it 'a receipt printed cannot be empty' do
	  receipt = Receipt.new(nil)
	  expect(receipt.print).not_to be_empty
	end

	it 'contains the current balance' do
	  receipt = Receipt.new(1)
	  expect(receipt.print).to eq "balance: 1"
	end

	it 'contains the current balance' do
	  receipt = Receipt.new(2)
	  expect(receipt.print).to eq "balance: 2"
	end

	it 'contains the time and date' do
	  receipt = Receipt.new(3)
	  expect(receipt.print).to eq "balance: 2, "
	end

end