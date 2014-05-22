require 'bankaccount'

describe "BankAccount" do

	context 'empty account'
  	it 'cannot dispense any money' do
  		bankaccount = BankAccount.new
  		expect { bankaccount.withdrawl(1) }.to raise_error(RuntimeError)	
  	end

  let(:bankaccount) { BankAccount.new(1) }

  context 'non-empty account'
  	it 'should dispense money up to the funds available' do
  		expect(bankaccount.withdrawl(1)).to eq 0
  	end
  	it 'cannot dispense money when not enough funds' do
  		expect { bankaccount.withdrawl(3) }.to raise_error(RuntimeError)
  	end

  context 'depositing funds'
    it 'increases the balance by the funds deposited' do
    	expect(bankaccount.deposit(0)).to eq 1
    	expect(bankaccount.deposit(1)).to eq 2
	end

	context 'printing confirmation'
		it 'should print balance after withdrawl' do
			printer = double("printer")
			bankaccount.withdrawl(3, printer)
			expect{printer.print("balance: 3, date: 2014-05-09 11:39:07 UTC")}
		end
end