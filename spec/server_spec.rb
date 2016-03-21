require "./app/server"

describe "URL Shortener" do

  let(:redis) { Redis.new }

  describe "#GET '/'" do
    it "loads the homepage" do
      get "/"
      expect(last_response).to be_ok
    end

    it "displays homepage content" do
      get "/"
      expect(last_response.body).to include("URL Shortener")
    end
  end

  describe "#POST '/'" do
    it "loads the homepage" do
      post "/"
      expect(last_response).to be_ok
    end

    it "posts a long url" do
      allow_any_instance_of(UrlShortener).to receive(:redis).and_return(redis)
      expect(redis).to receive(:setnx)
      post "/", url: "https://www.farmdrop.co.uk/"
      expect(last_response).to be_ok
    end
  end

  describe "#GET /:short_url" do
    it "returns a short url that redirects to the long url" do
      allow_any_instance_of(UrlShortener).to receive(:redis).and_return(redis)
      expect(redis).to receive(:get).with("links:abcd").and_return("https://www.farmdrop.co.uk/")
      get "/abcd"
      expect(last_response).to be_redirect
    end
  end
end
