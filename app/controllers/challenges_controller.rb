class ChallengesController < ApplicationController
  before_action :authenticate_user!
  include ChallengesHelper
  include ThemesHelper
  include UsersHelper
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
    current_user.update(:unlockedChallenges => (current_user.unlockedChallenges + newUnlocked).uniq)
    current_user.add_points(3)
  end

  def create
    if current_user.challenges.where(completed: false).length < 6
      new_challenge = current_user.challenges.create(challenge_params)
      # new_challenge.progress_logs.create(metric: 0) # create empty log at 0
      render :json => {:showPopover => true}
    else
      message = {:alert => "You can only have a maximum of 6 challenges!"}
      redirect_to request.referer, :flash => message
    end
  end

  def endDate(challenge)
    @addtimesec = challenge.length_of_challenge * 7 * 24 * 60 * 60
    endtime = challenge.created_at + @addtimesec

    return endtime

  end
  helper_method :endDate

  def update_notification_viewed
    Challenge.where(id:params[:id]).update(notification_viewed:true)
  end

  def completed
    @user_completed_challenges = current_user.challenges.where(completed: true)
    @share_with_rootup = !!current_user.permissions && current_user.permissions.include?('challenges')
    all_challenges = []
    # TODO: move this to a helper
    themes.each do |theme|
      challenges[theme.to_sym][:challenges].each do |challenge|
        all_challenges << challenge
      end
    end
    case params[:sort_by]
    when "completion"
      @completed_challenges = []
      @incompleted_challenges = []
      all_challenges.each do |challenge|
        if @user_completed_challenges.exists?(challenge_name: challenge[:name])
          @completed_challenges << @user_completed_challenges.where(challenge_name: challenge[:name])
        else
          @incompleted_challenges << challenge
        end
      end
    when "shared"
      @shared_challenges = []
      @not_shared_challenges = []
      @user_completed_challenges.each do |challenge|
        # @chall_obj = @user_completed_challenges.find(@user_completed_challenges.where(challenge_name: challenge[:name]).pluck(:id)[0])
        if @share_with_rootup || (!!challenge.reflection && challenge.reflection.permission)
          @shared_challenges << challenge
        else
          @not_shared_challenges << challenge
        end
      end
    else
      # themes is selected. the default
      @completed_challenges = @user_completed_challenges
    end
  end

  def reflections

  end

  private

  def challenge_params
    params.permit(:challenge_name, :theme, :length_of_challenge, :completed, :date_complete)
  end
end
