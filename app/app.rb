require 'sinatra/base'
require_relative '../lib/storing_data.rb'

class DataServer < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    erb :index
  end

  get '/get' do
    @key =params[:key]
    @value = session[:store].get_data(@key)
    erb :get
  end

  get '/set' do
    unless session[:store]
      session[:store] = DataStore.new
    end
      session[:store].save_data(params.keys[0], params.values[0])
      redirect '/get'
  end

  run if app_file == $0
end
