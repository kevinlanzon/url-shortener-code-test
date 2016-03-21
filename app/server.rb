require 'sinatra/base'
require 'redis'
require_relative 'helpers/token'
require_relative 'helpers/redis'

include UrlTokenHelper
include RedisHelper

class UrlShortener < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "public") }

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
