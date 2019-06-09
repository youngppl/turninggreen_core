class ChallengesController < ApplicationController
  before_action :authenticate_user!
  include ChallengesHelper
  include ThemesHelper
  def show
    # matches /challenges/[challenge] to correct challenge page
    @challenge_name = params['challenge_name']
    @challenge_data = challenges[@challenge_name.to_sym]
    @theme_data = themesContent[@challenge_name.to_sym]
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
    if current_user.challenges.length < 8
      current_user.challenges.create(challenge_params)
      render :json => {:showPopover => true}
      # message = {:notice => "Challenge has been successfully added!"}
    else
      message = {:alert => "You can only have a maximum of 8 challenges!"}
      redirect_to request.referer, :flash => message
    end
  end

  def completed
    @completed = current_user.challenges.first(8)
  end

  private

  def challenge_params
    params.permit(:challenge_name, :theme, :length_of_challenge)
  end
end
