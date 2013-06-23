require 'pry'

require_relative "client_account"
require_relative "stock"
require_relative "portfolio"

account = ClientAccount.new "Account #1", 1000

portfolio1 = Portfolio.new "Diversified"
portfolio2 = Portfolio.new "Low risk"
portfolio3 = Portfolio.new "High risk"


[portfolio1, portfolio2, portfolio3].each do |portfolio|
  account.portfolios[portfolio.portfolio_name] = portfolio
end

# ****** FILLING UP PORTFOLIOS WITH OUR STOCKS *******

stock1 = Stock.new "AAPL", 5
stock2 = Stock.new "AAXJ", 4
stock3 = Stock.new "ABCB", 3
stock4 = Stock.new "ABAX", 10
stock5 = Stock.new "ABCD", 6

  [stock1, stock2, stock3, stock4, stock5].each do |stock|
    portfolio1.stocks[stock.stock_name] = stock
  end

stock6 = Stock.new "BANC", 11
stock7 = Stock.new "BANCL", 12
stock8 = Stock.new "BANCP", 4
stock9 = Stock.new "BANF", 2

  [stock6, stock7, stock8, stock9].each do |stock|
    portfolio2.stocks[stock.stock_name] = stock
  end

stock10 = Stock.new "GOOG", 20
stock11 = Stock.new "GPIC", 25
stock12 = Stock.new "GPRC", 30

  [stock10, stock11, stock12].each do |stock|
    portfolio3.stocks[stock.stock_name] = stock
  end

binding.pry

# ****** SETTING UP MENU *******

#
#
number_of_portfolios = account.portfolios.size



def list_portfolios_with_values

end

#(1..account.portfolios.size).each{|i| }


#puts "Welcome to your account #{account.account_name}, you have #{porfolios.length} porfolios: #{portfolios.keys}"

#list_portfolios

#puts "What would you like to do today?"


# ******  *******

# ******  *******

# ******  *******



