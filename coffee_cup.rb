require 'pry'

class CoffeeCup
  attr_reader :amount, :capacity

  def initialize(amount = 8, capacity = 12)
    @amount = amount.to_s + " oz"
    @capacity = capacity.to_s + " oz"
  end

  def sip!
    unless @amount == "0 oz"
      raw_amount = amount.split(' ')
      sipped_amount = raw_amount[0].to_i - 1
      @amount = sipped_amount.to_s + " oz"
    else
      puts "Hey! You need a refill!"
      @amount = 0
      @amount = amount.to_s + " oz"
    end
  end

  def spill!
    puts "Someone spilled the coffee!"
    @amount = 0
    @amount = amount.to_s + " oz"
  end

  def refill!
    raw_capacity = capacity.split(' ')
    refill_capacity = raw_capacity[0].to_i - 2

    raw_amount = amount.split(' ')
    @amount = raw_amount[0].to_i
    if @amount < refill_capacity
      until @amount == refill_capacity
        @amount += 1
      end
      puts "Coffee cup refilled to #{amount} oz!"
      @amount = amount.to_s + " oz"
    else
      puts "You cannot refill right now!"
      @amount = amount.to_s + " oz"
    end
  end

end

binding.pry
