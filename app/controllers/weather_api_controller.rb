class WeatherApiController < ApplicationController
  def index
    
  end

  def show
    @url = 'http://api.weatherapi.com/v1/current.json?key=4b7efad8668a407d87982537211211&q='+params[:city]+'&aqi=no'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end
end
