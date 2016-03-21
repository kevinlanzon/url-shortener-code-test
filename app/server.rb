require 'sinatra/base'

class UrlShortener < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "public") }


  get '/' do
    erb :index
  end

  post '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
