stocks = [17,3,6,9,15,8,6,1,10]

def stock_picker(stock_array)
  profit_hash = {}
  stock_array.each_with_index do |buy_price, buy_index|
    stock_array.each_with_index do |sell_price, sell_index|
      if sell_index > buy_index
        profit_hash[[buy_index, sell_index]] = sell_price - buy_price
      end
    end
  end
  result = profit_hash
    .sort_by {|k, v| -v}
    .first
    .first
end

stock_picker(stocks)