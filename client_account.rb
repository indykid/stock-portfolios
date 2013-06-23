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



  # def buy_stock(stock_name)

  # end



  # def sell_stock

  # end





# A client can buy stocks at market rate; these stocks will be added to a portfolio and the purchase amount subtracted from cash. (You cannot go to a negative cash balance).

# A client can sell a stock. The proceeds go into his account.



end
