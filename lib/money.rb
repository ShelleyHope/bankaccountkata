module Foo
  Yes = 1
  No = 0
end

class Money
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def self.zero
    Money.new(0)
  end

  def self.one
    Money.new(1)
  end

  def self.two
    Money.new(2)
  end

  def self.three
    Money.new(3)
  end

  def biggerThan(other)
    self.amount>other.amount
  end

  def is(other_amount)
    @amount == other_amount
  end
end