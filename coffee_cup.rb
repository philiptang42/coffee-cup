require 'pry'

class CoffeeCup
  attr_reader :amount, :capacity

  def initialize(amount = 8, capacity = 12)
    @amount = amount
    @capacity = capacity
  end

end

binding.pry
