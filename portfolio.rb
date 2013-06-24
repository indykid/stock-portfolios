# Every client can create multiple portfolios.

class Portfolio

  attr_accessor :portfolio_name, :stocks

  def initialize(portfolio_name)
    @portfolio_name = portfolio_name
    @stocks = {}
  end

  def portfolio_value
    @stocks.values.map {|e| e.stock_value}.inject(:+).round(2)
  end

  def list_portfolios_with_values
    puts @portfolios.values.join
  end

  def stocks_in_portfolio
    stocks.each_key {|key| puts key }
  end

  # def to_s
  #   "#{@portfolio_name} current value is #{portfolio_value}"
  # end

  def sell_stock(stock_code, quantity)

  end

# *********** needs testing ***************

  def buy_stock(name, quantity, portfolio)
    if @stocks.has_key?("#{name}")
      @stocks[name].stock_quantity += quantity
    else create_new_stock
    end
  end

  def create_new_stock(p_name)

    print "Stock name: "
    s_name = gets.chomp
    print "Stock quantity: "
    s_quantity = gets.chomp.to_i
    @stocks[s_name] = Stock.new "#{s_name}", s_quantity
  end

#   purchasing_stock = @stocks[name]
  #   purchasing_quantity = @stocks[quantity]
  #   target_portfolio = portfolio
  #   purchase_value = purchasing_quantity * fetch_price


  #   quantity_of_p_stock = @stocks[quantity]
  #   @stocks[stock_code.stock_name] = [stock_code, quantity]
  # end

# *****************************************






  # def check_stock
  #   stock = gets.chomp
  #   if
  #   end

  # end






end