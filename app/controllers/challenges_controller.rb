class ChallengesController < ApplicationController
  include ChallengesHelper
  def show
    @challenge_name = params['challenge_name']
    @already_unlocked = current_user.unlockedChallenges.include?(@challenge_name)
    if !challenges.key?(@challenge_name.to_sym)
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def unlock
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
end
