require 'rails_helper'

RSpec.describe "Admins", type: :request do
  describe "GET /index" do
    it "assigns all admins to @admins" do
      get(:index)
      expect(assigns(:admins)).to eq(Admin.all)
    end
  end
end
