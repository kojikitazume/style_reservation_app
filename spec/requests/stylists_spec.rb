require 'rails_helper'

RSpec.describe "Stylists", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/stylists/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/stylists/show"
      expect(response).to have_http_status(:success)
    end
  end

end
