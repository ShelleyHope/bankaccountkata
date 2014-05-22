require 'receipt'
describe	'Receipt' do

	it 'a receipt printed cannot be empty' do
	  receipt = Receipt.new(nil, nil)
	  expect(receipt.print).not_to be_empty
	end

	it 'contains the current balance' do
	  receipt = Receipt.new(1, nil)
	  expect(receipt.print).to include "balance: 1"
	end

	it 'contains the current balance' do
	  receipt = Receipt.new(2, nil)
	  expect(receipt.print).to include "balance: 2"
	end

	it 'contains the time and date' do
	  receipt = Receipt.new(3, nil)
	  Time.stub(:now => Time.utc(2014, 05, 9, 11, 39, 07))
	  expect(receipt.print).to include "balance: 3"
    expect(receipt.print).to include "date: 2014-05-09 11:39:07 UTC"
	end

end