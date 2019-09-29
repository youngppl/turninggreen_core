class ReflectionsController < ApplicationController
  def new
    Challenge.find(params[:reflection][:challenge_id]).progress_logs.create(metric: params[:reflection][:log])
    Reflection.create(reflection_params)
    Challenge.find(params[:reflection][:challenge_id]).update(reflection_completed: true)
    current_user.add_points(3)
  end

  def edit
    Challenge.find(params[:challenge_id]).reflection.update(permission: params[:permission])
  end

  private

  def reflection_params
    params.require(:reflection).permit(:challenge_id, :reflection, :photo, :caption, :permission)
  end
end
