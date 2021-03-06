require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../app/server.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() UrlShortener end
end

RSpec.configure { |c| c.include RSpecMixin }
