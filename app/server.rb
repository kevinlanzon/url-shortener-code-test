require 'sinatra/base'

class UrlShortener < Sinatra::Base

  get '/' do
    'Hello UrlShortener!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
