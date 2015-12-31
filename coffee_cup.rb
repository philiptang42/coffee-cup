require 'pry'

class CoffeeCup
  attr_reader :amount, :capacity

  def initialize(amount = 8, capacity = 12)
    @amount = amount.to_s + " oz"
    @capacity = capacity.to_s + " oz"
  end

  def sip!
    unless @amount == "0 oz"
      raw_amount = amount.split('')
      sipped_amount = raw_amount[0].to_i - 1
      @amount = sipped_amount.to_s + " oz"
    else
      puts "Hey! You need a refill!"
      @amount = "0 oz"
    end
  end

  def spill!
    puts "Someone spilled the coffee!"
    @amount = "0 oz"
  end

end

binding.pry
