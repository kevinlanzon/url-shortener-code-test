require 'sinatra/base'
require 'redis'

class UrlShortener < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "public") }

  helpers do
    def redis
      @redis = Redis.new
    end

    def token(length)
      chars = [*('A'..'Z'), *('a'..'z'), *(0..9)]
      (0...length).map {chars.sample}.join.downcase
    end
  end

  get '/' do
    erb :index
  end

  post '/' do
    if params[:url] != ""
      @short_url = token(4)
      redis.setnx "links:#{@short_url}", params[:url]
    end
    erb :index
  end

  get '/:short_url' do
    @url = redis.get "links:#{params[:short_url]}"
    redirect @url
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
