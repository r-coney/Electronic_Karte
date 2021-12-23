require 'rails_helper'

RSpec.describe "Kaltes", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/kaltes/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/kaltes/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/kaltes/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
