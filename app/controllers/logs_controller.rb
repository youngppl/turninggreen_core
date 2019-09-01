class LogsController < ApplicationController
  def new
    Challenge.find(params[:challenge_id]).progress_logs.create(metric: params[:metric])
  end
end
