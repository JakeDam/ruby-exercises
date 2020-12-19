#Stock picker function
def stock_picker(array)
  results = []
  profit = 0
  array.each_with_index do |buy_price, buy_day|
    array.each_with_index do |sell_price, sell_day|
      if sell_day > buy_day
        if (sell_price - buy_price) > profit
          profit = sell_price - buy_price
          results[0] = buy_day
          results[1] = sell_day
        end
      end
    end
  end
  results
  puts "Buy on day #{results[0]} and sell on day #{results[1]} for a max profit of $#{profit}"
end 
stock_picker([17,3,6,9,15,8,6,1,10])