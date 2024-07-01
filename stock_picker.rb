stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stocks)
  min_price_index = 0
  max_profit = 0
  buy_day = 0
  sell_day = 0

  stocks.each_with_index do |price, index|
    if price < stocks[min_price_index]
      min_price_index = index
    elsif price - stocks[min_price_index] > max_profit
      max_profit = price - stocks[min_price_index]
      buy_day = min_price_index
      sell_day = index
    end
  end

  [buy_day, sell_day]
end

print stock_picker(stocks)
