
class Stock


  attr_accessor :stock_name, :stock_quantity

  def initialize(name, quantity)
    @stock_name = name
    @stock_quantity = quantity
  end


  # def to_s
  #   "you have #{stock_quantity} shares of #{stock_name} stock"
  # end


  def fetch_price
    YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock_name)[@stock_name].lastTrade
  end

  def stock_value
    @stock_quantity * fetch_price
  end

end
