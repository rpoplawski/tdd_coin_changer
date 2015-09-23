module Changer
  def self.for(amount)
    purse = []
    coins = [25, 10, 5, 1]
    coins.each do |coin|
      if amount >= coin
        (amount / coin).times { purse << coin }
        amount = amount -(coin * (amount / coin))
      end
    end
    purse
  end
end

#class Changer
#  def self.run(amt)
#    return_amount = []
#    coins = [25, 10, 5, 1]
#    coins.each do |coin|
#      if amt >= coin
#        number_of_coins = amt / coin
#        value_of_coins = number_of_coins * coin
#        amt = amt - value_of_coins
#        return_amount << Array.new(number_of_coins, coin)
#      end
#    end
#    return_amount.flatten
#  end
#end
