require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /about" do
    it "returns http success" do
      get "/pages/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /how_works" do
    it "returns http success" do
      get "/pages/how_works"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /terms" do
    it "returns http success" do
      get "/pages/terms"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /privacy" do
    it "returns http success" do
      get "/pages/privacy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /faq" do
    it "returns http success" do
      get "/pages/faq"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contacts" do
    it "returns http success" do
      get "/pages/contacts"
      expect(response).to have_http_status(:success)
    end
  end

end
