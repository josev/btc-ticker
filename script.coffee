$ ->
  ticker = new Ticker()
  ticker.listen (data)->
    $('body').text data.price
  sometime = 5000
  setTimeout ( ->
    ticker.close()
  ), sometime