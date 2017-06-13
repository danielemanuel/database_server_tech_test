require 'sinatra/base'

class DataServer < Sinatra::Base
  set :port, 4000
  get '/' do
    'Hello'
  end

run if app_file == $0
end
