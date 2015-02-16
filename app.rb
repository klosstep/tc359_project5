# app.rb
require 'sinatra'
require 'holidapi'


class MyWebApp < Sinatra::Base
  get '/' do
  	@holidays = HolidApi.get
    @holidays_now = HolidApi.get(country: 'us', year: (Date.today.strftime("%Y")), month: (Date.today.strftime("%m")) )
    @holidays_birth = HolidApi.get(country: 'us', year: 1993, month: 2)

    erb :index
  end
end