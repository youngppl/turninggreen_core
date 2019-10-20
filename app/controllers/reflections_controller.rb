class ReflectionsController < ApplicationController
  include UsersHelper
  include ChallengesHelper

  def new
    challenge = Challenge.find(params[:reflection][:challenge_id])
    challenge.progress_logs.create(metric: params[:reflection][:log])
    Reflection.create(reflection_params)
    challenge.update(reflection_completed: true)
    current_user.add_points(challenge.point_worth)
  end

  def edit
    Challenge.find(params[:challenge_id]).reflection.update(permission: params[:permission])
  end

  private

  def reflection_params
    params.require(:reflection).permit(:challenge_id, :reflection, :caption, :permission, :photo)
  end
end
