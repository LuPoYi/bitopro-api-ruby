module Bitopro
  module Public
    class Error < StandardError; end

    def order_book(pair = nil)
      raise Error, "pair is required" unless pair

      get("/order-book/#{pair}")
    end

    def tickers(pair = nil)
      raise Error, "pair is required" unless pair

      get("/tickers/#{pair}")
    end

    def recent_trades(pair = nil)
      raise Error, "pair is required" unless pair

      get("/trades/#{pair}")
    end
  end
end
