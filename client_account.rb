class ClientAccount

  attr_accessor :account_name, :balance, :portfolios

  def initialize(account_name, balance)
    @account_name = account_name
    @balance = balance
    @portfolios = {}
  end

  def to_s
    "#{account_name} has a balance of #{balance}GBP"
  end

  def all_portfolio_values
    @portfolios.values.map {|e| e.portfolio_value}.inject(:+).round(2)
  end





  # def buy_stock(stock_name)

  # end



  # def sell_stock

  # end

  # def list_portfolio_names
  #   puts @portfolios.keys.join "\n"
  # end



end
