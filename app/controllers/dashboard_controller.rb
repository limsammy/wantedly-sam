class DashboardController < ApplicationController

  def index
    @user = current_user
    @skill = current_user.skills.new
  end

end
