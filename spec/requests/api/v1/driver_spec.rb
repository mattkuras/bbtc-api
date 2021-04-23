require 'rails_helper'

RSpec.describe "Api::V1::Drivers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/driver/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/driver/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/driver/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/driver/update"
      expect(response).to have_http_status(:success)
    end
  end

end
