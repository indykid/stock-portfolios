

#http://www.eoddata.com/stockList/NASDAQ.htm


Client account £$
  buy stock @market rate
  sell stock

  [Portfolio]
  contains stock

    [Stock] - name of stocks and amount of money adjusted depending on sale/purchase




#Create an account for client (name, balance).
#Every client can create multiple portfolios.

#A client can buy stocks at market rate; these stocks will be added to a portfolio and the purchase amount subtracted from cash. (You cannot go to a negative cash balance).

#A client can sell a stock. The proceeds go into his account.

List all client portfolios and their values (each portfolio value and sum of portfolio values) and the account balance.

List all stocks in a portfolio.

List all clients.

Note:

Each time a portfolio balance is calculated, the program needs to go out to the web and get current stock prices.

yahoofinance gem:

YahooFinance::get_quotes(YahooFinance::StandardQuote, 'AAPL')['AAPL'].lastTrade

=> 453.62