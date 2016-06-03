class SkillsController < ApplicationController
before_action :authenticate_musician!, except: [:show, :index]

  def new
    @skill = Skill.new
    @musician = current_musician
  end

  def create
    @musician = current_musician
    @positions = Position.all
    @skill = @musician.skills.build(skill_params)
      if @skill.save
        redirect_to musician_path(@musician)
      else
        redirect_to musician_path(@musician)
      end
  end

  def update
    @musician = Musician.find(params[:musician_id])

    @old_primary_skill = @musician.skills.find_by(mainskill: true)

    if @old_primary_skill
      @old_primary_skill.mainskill = false
      @old_primary_skill.save
      @skill = Skill.find(params[:id])

      if @skill.update_attributes(skill_params)
        redirect_to musician_url(@musician)
      else
        redirect_to musician_url(@musician)
      end

    else
      redirect_to musician_url(@musician)
    end
  end

  def destroy
    @musician = Musician.find(params[:musician_id])
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to musician_url(@musician)
  end

  private
    def skill_params
      params.require(:skill).permit(:musician_id, :position_id, :level, :mainskill)
    end
end
