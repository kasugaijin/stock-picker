This stock picker is built in Ruby for The Odin Project. There is an array of prices for a stock, where each index is a day with a different stock price. This algorithm determines which days to buy and sell to maximise gains, taking into account cases when e.g., the highest stock price comes first, or lowest price comes last. You can download picker.rb and view locally if you have Ruby insalled, or run online at: 


<!-- prices.each do |i|
    hash = {}
    c = 1
    while c <= prices.length - prices.index(i) -1 do
      hash[i] = [i - prices[prices.index(i) + c]]
      c += 1
    end
    puts hash      
  end
end

picker(stock_prices) -->