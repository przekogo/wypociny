class CvsController < ApplicationController

  def new
    @cv = Cv.new
  end

  def show
    @cv = Cv.find(params[:id])
  end

  def edit
    @cv = Cv.find(params[:id])
    @experiences = @cv.experiences
    @experience = Experience.new
    @educations = @cv.educations
    @education = Education.new
    @languages = @cv.languages
    @language = Language.new
    @skills = @cv.skills
    @skill = Skill.new
    @hobbies = @cv.hobbies
    @hobby = Hobby.new
  end

  def create
    cv = Cv.new(cv_params)
    cv.employee_id = current_user.employee_id
    if cv.save
      redirect_to edit_cv_path(cv.id)
    end
  end

  def update
    @cv = Cv.find(params[:cv_id])
    respond_to do |format|
      if @cv.update(cv_params)
        @cv = Cv.find(params[:cv_id])
        format.js
      end
    end
  end

private
  def cv_params
    params.require(:cv).permit(:birthdate, :location, :email, :telephone)
  end
end