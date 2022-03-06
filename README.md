This stock picker is built in Ruby for The Odin Project. There is an array of prices for a stock, where each element is a day with a different stock price. This algorithm determines which days to buy and sell to maximise gains, taking into account cases when e.g., the highest stock price comes first, or lowest price comes last. You can download picker.rb and view locally if you have Ruby insalled, or you can run online below. 

Notes: I first solved this without the each_with_index enumerable, and took a pretty complex route. I then checked other solutions and saw the each_with_index enumerable is tailor made for this problem, and took just 10 minutes to write after...an important lesson to know the Ruby enumerables and what they can do!

First solution without each_with_index: https://replit.com/@BenJ8/stock-picker#main.rb
Second solution with each_with_index: https://replit.com/@BenJ8/stock-picker-each-with-index#main.rb 


<!-- stock_prices = [17,3,6,9,15,8,6,1,10]

def picker(prices)

  #make hash with unique keys that equal the indexes of prices array
  #cannot use prices.each because duplitcate prices are stored in same key, not uniquely
  hash = {}
  prices.each_index {|i| hash[i] = []}
  puts hash

  #iterate over stock_prices to take one value and subtract each successive value
  #from it, and store each result as an element in hash
  #need to make an array of arrays to handle duplicate numbers!!!!!!!!!
  prices.each do |i|
    c = 1
    while c <= prices.length - prices.index(i) -1 do
      hash[prices.index(i)] << i - prices[prices.index(i) + c]
      c += 1
    end     
  end
  puts hash
end

picker(stock_prices) -->



