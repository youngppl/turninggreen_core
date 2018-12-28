class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    # user dashboard, redirects here after successful login
  end
end
