class HomeController < ApplicationController
  def index
    if !current_user.admin?
    redirect_to assignments_path
  end
  end
end
