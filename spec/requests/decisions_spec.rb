require 'rails_helper'

RSpec.describe "Decisions", type: :request do
  describe "GET /decisions" do
    it "works! (now write some real specs)" do
      get decisions_path
      expect(response).to have_http_status(200)
    end
  end
end
