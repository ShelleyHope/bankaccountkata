require 'bankaccount'
require 'receipt_printer'
require 'money'

describe "BankAccount" do

  let(:bankaccount) { BankAccount.new(Money.one) }
  let(:printer) { ReceiptPrinter.new }

  context 'empty account'
  it 'cannot dispense any money' do
    bankaccount = BankAccount.new
    expect { bankaccount.withdrawl(1, printer) }.to raise_error(RuntimeError)
  end

  context 'non-empty account'
  it 'should dispense money up to the funds available' do
    expect(bankaccount.withdrawl(Money.one, printer)).to eq Money.zero
  end
  it 'cannot dispense money when not enough funds' do
    expect { bankaccount.withdrawl(Money.three, printer) }.to raise_error(RuntimeError)
  end

  context 'depositing funds'
  it 'increases the balance by the funds deposited' do
    expect(bankaccount.deposit(Money.zero)).to eq Money.one
    expect(bankaccount.deposit(Money.one)).to eq Money.two
  end

  context 'printing confirmation'
  it 'should print balance after withdrawl' do
    printer_double = double('printer')

    printer_double.should_receive(:print).with(Money.zero, Money.one)

    bankaccount.withdrawl(1, printer_double)
    # expect { printer.print("balance: 3, date: 2014-05-09 11:39:07 UTC") }
  end
end