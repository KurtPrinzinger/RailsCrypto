class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'

  	@url = 'https://api.coinmarketcap.com/v1/ticker/'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@coins = JSON.parse(@response)
    @currencies = []
    for c in @coins do 
      @currencies << c["symbol"]
    end
  end
  
  def about
  end
  
  def lookup
    @symbol = params[:sym]
        require 'net/http'
    require 'json'

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @currencies = []
    for c in @coins do 
      @currencies << c["symbol"]
    end
  end
end
