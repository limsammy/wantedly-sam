class DashboardController < ApplicationController

  def index
    @user = current_user
    @skill = @user.skills.new if !current_user.nil?
    @skills = @user.skills.sort_by &:endorsements
  end

end
