require 'rails_helper'

# Not testing nasa_api gem in the Rails specs
RSpec.describe "Pages", type: :request do
  describe "GET root" do
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET epic" do
    it "returns http success" do
      get "/epic"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET earth" do
    it "returns http success" do
      get "/earth"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET mars" do
    it "returns http success" do
      get "/mars"
      expect(response).to have_http_status(:success)
    end
  end
end

