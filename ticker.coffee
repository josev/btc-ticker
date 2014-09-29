class @Ticker

  constructor: ( socket_url = "wss://ws.mexbt.com/v1/ticker" ) ->
    @socket = new WebSocket socket_url
    @socket.onopen = (event) ->
      this.send JSON.stringify {messageType: 'logon'}

    @socket.onmessage = (event) ->
      data = JSON.parse event.data
      if data.prodPair == "BTCMXN"
        $.event.trigger
          type: 'TICKER_UPDATE'
          message: 'Ticker update'
          price: data.last

  listen: ( call ) ->
    $(document).on "TICKER_UPDATE", call

  close: ->
    @socket.close()

