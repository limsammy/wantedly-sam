class UserSkillsController < ApplicationController

  def increment
    skill = Skill.find(params[:id])
    if skill.endorsements.nil?
      skill.endorsements = 0
    end
    skill.endorsements += 1
    skill.save!
    redirect_to root_path
  end
end
