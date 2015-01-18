class SkillsController < ApplicationController
  def create
    @exp = Skill.new(skill_params)
    respond_to do |format|
      if @exp.save
        @cv = Cv.find(params[:cv_id])
        @skill = Skill.new
        @skills = @cv.skills
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def update
    @exp = Skill.find(params[:skill_id])
    respond_to do |format|
      if @exp.update(skill_params)
        @cv = Cv.find(params[:cv_id])
        @skill = Skill.new
        @skills = @cv.skills
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def destroy
    @exp = Skill.find(params[:id])
    @exp.destroy
    respond_to do |format|
      @cv = Cv.find(params[:cv_id])
      @skill = Skill.new
      @skills = @cv.skills
      format.js
    end
  end

  private
    def skill_params
      params.permit(:name, :cv_id, :id)
    end
end