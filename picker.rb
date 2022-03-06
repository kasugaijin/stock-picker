def picker(prices)

  #make a hash with key (day) and value (price)
  #needs to be hash because duplicate values in an array prevent code below working properly
  prices_hash = {}
  prices.each_index {|i| prices_hash[i] = prices[i]}
  
  #make an array of prices_hash keys to so you can reference hash index on line 25
  prices_hash_keys = prices_hash.keys

  #make second hash with key (day) and value [] empty array for use below
  #cannot use prices.each because duplicate prices get stored in same key, not uniquely like index
  output_hash = {}
  prices.each_index {|i| output_hash[i] = []}

  #loop through prices_hash, and for each k,v pair, execute a while loop that iterates 
  #euqal to hash length minus the position of the given key (key index pulled from line 12)
  #then subtract the subsequent values in the hash from v, and store output in output_hash
  prices_hash.each do |k, v|
    c = 1
    while c <= prices_hash.length - prices_hash_keys.index(k) -1 do
      output_hash[k] << v - prices_hash[k + c]
      c += 1
    end     
  end
  
  #loop through output_hash to find lowest value in each key and push to lowest_array
  #values are (buy - sell) so a negative value is a gain and positive is a loss
  lowest_array = []
  output_hash.each do |k,v|
    lowest_array << v.min
  end

  #get rid of any nil values if they exist
  #buy day is the hash index where the lowest number out of all values exists
  #sell day is buy day index + index of lowest number in its array, + 1
  lowest_array.compact!
  buy_day = lowest_array.index(lowest_array.min)
  sell_day = buy_day + output_hash[buy_day].index(output_hash[buy_day].min) + 1
  puts "buy on day #{buy_day}"
  puts "sell on day #{sell_day}"
  
end

picker([17,3,6,9,8,15,6,1,10])
picker([2,5,1,12,1,22,3,18])
picker([100,23,3,15,50,7])



