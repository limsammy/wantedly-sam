class SkillsController < ApplicationController
  def create
    user = current_user
    @skill = user.skills.new(skill_params)
    if @skill.save
      flash[:success] = "Created skill #{@skill.name}"
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end
end
