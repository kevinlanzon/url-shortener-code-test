require './app/server'

describe "My Sinatra Application" do

  describe "#GET '/'" do
    it "loads the homepage" do
      get '/'
      expect(last_response).to be_ok
    end

    it "displays homepage content" do
      get '/'
      expect(last_response.body).to include("URL Shortener")
    end
  end

  describe "#POST '/'" do
    it "loads the homepage" do
      post '/'
      expect(last_response).to be_ok
    end
  end
end
