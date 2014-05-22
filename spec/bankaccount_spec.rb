require 'bankaccount'
require 'receipt_printer'

describe "BankAccount" do

  let(:bankaccount) { BankAccount.new(1) }
  let(:printer) { ReceiptPrinter.new }

  context 'empty account'
  it 'cannot dispense any money' do
    bankaccount = BankAccount.new
    expect { bankaccount.withdrawl(1, printer) }.to raise_error(RuntimeError)
  end


  context 'non-empty account'
  it 'should dispense money up to the funds available' do
    expect(bankaccount.withdrawl(1, printer)).to eq 0
  end
  it 'cannot dispense money when not enough funds' do
    expect { bankaccount.withdrawl(3, printer) }.to raise_error(RuntimeError)
  end

  context 'depositing funds'
  it 'increases the balance by the funds deposited' do
    expect(bankaccount.deposit(0)).to eq 1
    expect(bankaccount.deposit(1)).to eq 2
  end

  context 'printing confirmation'
  it 'should print balance after withdrawl' do
    printer_double = double('printer')

    printer_double.should_receive(:print).with(0,1)

    bankaccount.withdrawl(1, printer_double)
    # expect { printer.print("balance: 3, date: 2014-05-09 11:39:07 UTC") }
  end
end