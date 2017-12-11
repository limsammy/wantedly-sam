class DashboardController < ApplicationController

  def index
    @user = current_user
    @skill = Skill.new
  end

end
