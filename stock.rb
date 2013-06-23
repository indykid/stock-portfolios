class Stock

  attr_accessor :stock_name, :stock_quantity

  def initialize(stock_name, stock_quantity)
    @stock_name = stock_name
    @stock_quantity = stock_quantity
  end


  def to_s
    "you have #{stock_quantity} shares of #{stock_name} stock"
  end

  def create_new_stock(portfolio_name)
    print "Stock name: "
    stock_name = gets.chomp
    print "Stock quantity: "
    stock_quantity = gets.to_i
    account.portfolio.stocks[stock_name] = Stock.new(stock_name, stock_quantity)
  end

  # def fetch_price
    #   #price = YahooFinance::get_quotes(YahooFinance::StandardQuote, 'AAPL')['AAPL'].lastTrade
    # end

end
