class ReflectionsController < ApplicationController
  include UsersHelper
  include ChallengesHelper

  def new
    challenge = Challenge.find(params[:reflection][:challenge_id])
    if params[:reflection][:log].nil?
      challenge.progress_logs.create(metric: 0)
    else
      challenge.progress_logs.create(metric: params[:reflection][:log])
    end
    Reflection.create(reflection_params)
    challenge.update(reflection_completed: true)
    current_user.add_points(challenge.point_worth)
    head :no_content
  end

  def edit
    Challenge.find(params[:challenge_id]).reflection.update(permission: params[:permission])
  end

  private

  def reflection_params
    params.require(:reflection).permit(:challenge_id, :reflection, :caption, :permission, :photo)
  end
end
