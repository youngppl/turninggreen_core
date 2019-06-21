module UsersHelper
  def getUserCompletedChallengeNames
    challengeNames = []
    current_user.challenges.each { |challenge| challengeNames << challenge.challenge_name }
    return challengeNames
  end
end
