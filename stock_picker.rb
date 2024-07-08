def stock_picker prices
  min_price_index = 0
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |price, index|
    if price < prices[min_price_index]
      min_price_index = index
    end
    
    potential_profit = price - prices[min_price_index]
    if potential_profit > max_profit
      max_profit = potential_profit
      best_days = [min_price_index, index]
    end
  end

  p best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12
