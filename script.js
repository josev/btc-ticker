// Generated by CoffeeScript 1.8.0
(function() {
  $(function() {
    var sometime, ticker;
    ticker = new Ticker();
    ticker.listen(function(data) {
      return $('body').text(data.price);
    });
    sometime = 5000;
    return setTimeout((function() {
      return ticker.close();
    }), sometime);
  });

}).call(this);
