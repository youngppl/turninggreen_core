require 'rails_helper'

RSpec.describe ChallengesController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(404)
    end
  end

end
