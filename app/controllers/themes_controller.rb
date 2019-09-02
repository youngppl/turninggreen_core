class ThemesController < ApplicationController
  before_action :authenticate_user!

  def index
    # unlock challenges if user meets criteria(ie: completed 1 waste challenge)
    if !current_user.unlockedChallenges.include?('Wellness') &&
      current_user.challenges.where(theme:"Food", completed:"true").length >= 1
      # unlock wellness if 1 food challenge is completed
      current_user.update(unlockedChallenges: current_user.unlockedChallenges.push('Wellness'))
    end

    if !current_user.unlockedChallenges.include?('Clean') &&
      current_user.challenges.where(theme:"Body", completed:"true").length >= 2
      # unlock clean if 2 body challenges is completed
      current_user.update(unlockedChallenges: current_user.unlockedChallenges.push('Clean'))
    end

    if !current_user.unlockedChallenges.include?('Home') &&
      current_user.challenges.where(theme:"Clean", completed:"true").length >= 1 &&
      current_user.challenges.where(theme:"Fashion", completed:"true").length >= 1
      # unlock home if 1 clean and 1 fashion is completed
      current_user.update(unlockedChallenges: current_user.unlockedChallenges.push('Home'))
    end

    if !current_user.unlockedChallenges.include?('Travel') &&
      current_user.challenges.where(theme:"Waste", completed:"true").length >= 1 &&
      current_user.challenges.where(theme:"Food", completed:"true").length >= 1
      # unlock travel if 1 waste and 1 food is completed
      current_user.update(unlockedChallenges: current_user.unlockedChallenges.push('Travel'))
    end
  end
end
