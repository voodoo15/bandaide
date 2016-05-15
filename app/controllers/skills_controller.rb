class SkillsController < ApplicationController

  def new
    @skill =Skill.new
    @musician=current_musician
  end

  def create
    @musician = current_musician
    @positions = Position.all
    @skill =@musician.skills.build(skill_params)

      if @skill.save
        redirect_to musician_path(@musician)
      else
        redirect_to musician_path(@musician)
      end

  end

  private

    def skill_params
      params.require(:skill).permit(:musician_id, :position_id)
    end

end
