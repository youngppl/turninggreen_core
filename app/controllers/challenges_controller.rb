class ChallengesController < ApplicationController
  before_action :authenticate_user!
  include ChallengesHelper
  def show
    # matches /challenges/[challenge] to correct challenge page
    @challenge_name = params['challenge_name']
    @already_unlocked = current_user.unlockedChallenges.include?(@challenge_name)
    if !challenges.key?(@challenge_name.to_sym)
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def unlock
    # unlocking themes
    challenge = params[:challenge]
    newUnlocked = [challenge]
    case challenge
    when "Body"
      newUnlocked.push("Clean")
    when "Fashion"
      newUnlocked.push("Home")
    when "Wellness"
      newUnlocked.push("Travel")
    end
    current_user.update(:unlockedChallenges => (current_user.unlockedChallenges + newUnlocked).uniq)
  end

  def create
    current_user.challenges.create(challenge_params)
  end

  private

  def challenge_params
    params.permit(:challenge_name, :theme, :length_of_challenge)
  end
end
