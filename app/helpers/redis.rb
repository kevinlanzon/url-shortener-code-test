module RedisHelper

  def redis
    @redis = Redis.new
  end
end
