require 'rails_helper'

RSpec.describe ChallengesController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {challenge_name: "Water"}
      expect(response).to have_http_status(302)
    end
  end

end
