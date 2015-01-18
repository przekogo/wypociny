class CvsController < ApplicationController

  def new
    @cv = Cv.new
  end

  def edit
    @cv = Cv.find(params[:id])
    @experiences = @cv.experiences
    @experience = Experience.new
    @educations = @cv.educations
    @education = Education.new
    @languages = @cv.languages
    @language = Language.new
  end

  def create
    cv = Cv.new(cv_params)
    cv.employee_id = current_user.employee_id
    if cv.save
      redirect_to cvs_edit_path(cv.id)
    end
  end

private
  def cv_params
    params.require(:cv).permit(:birthdate, :location, :email, :telephone)
  end
end