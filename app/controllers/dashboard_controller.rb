class DashboardController < ApplicationController

  def index
    @user = current_user
    @skill = current_user.skills.new if !current_user.nil?
  end

end
