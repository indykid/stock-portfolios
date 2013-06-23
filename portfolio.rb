# Every client can create multiple portfolios.

class Portfolio

  attr_accessor :portfolio_name, :stocks, :value

  def initialize(portfolio_name)
    @portfolio_name = portfolio_name
    @stocks = {}
    @value = 0
  end

  def list_portfolio_names
   puts account.portfolios.keys.join "\n"
  end






  # def evaluate_portfolio
  #   #
  # end
end