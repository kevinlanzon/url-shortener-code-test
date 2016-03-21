require './app/server'

describe "My Sinatra Application" do

   describe "#GET '/'" do
    it "loads homepage" do
      get '/'
      expect(last_response).to be_ok
    end
  end
end
