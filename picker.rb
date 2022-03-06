def picker(prices)
  buy = 0
  sell = 0
  profit = 0  
  prices.each_with_index do |buy_price, buy_day|
    prices.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        if sell_price - buy_price > profit
          profit = sell_price - buy_price
          buy = buy_day
          sell = sell_day
        end
      end
    end
  end
  puts "buy on day #{buy} and sell on day #{sell}"
  puts "your profit will be $#{profit} ka-ching ka-ching"
end

picker([17,3,6,9,8,15,6,1,10])
picker([2,5,1,12,1,22,3,18])
picker([100,23,3,15,50,7])



