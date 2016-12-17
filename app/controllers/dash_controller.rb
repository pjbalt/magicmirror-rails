class DashController < ApplicationController
  def index

  end
  def time
    time = Time.now.in_time_zone(ENV["TIMEZONE"])
    @time = time.strftime("%l:%M%p")
    render :partial => "dash/time"
  end
  def date
    date = Time.now.in_time_zone(ENV["TIMEZONE"])
    @date = date.strftime("%B #{date.day.ordinalize}")
    @day = date.strftime("%A")
    render :partial => "dash/date"
  end
  def forecast
    ForecastIO.api_key = ENV["DARK_SKY_API_KEY"]
    forecast = ForecastIO.forecast(ENV["LATITUDE"], ENV["LONGITUDE"])

    @today = forecast.currently.summary
    @current_temp = forecast.currently.temperature.round
    @icon = forecast.currently.icon
    render :partial => "dash/forecast"
  end
  def bitstamp
    ticker = JSON.load(open("https://www.bitstamp.net/api/v2/ticker/btcusd/"))
    @high = ticker["high"].to_f.round(2)
    @low = ticker["low"].to_f.round(2)
    @last = ticker["last"].to_f.round(2)
    render :partial => "dash/bitstamp"
  end
end