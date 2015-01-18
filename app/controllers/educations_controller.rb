class EducationsController < ApplicationController
  def create
    @exp = Education.new(edu_params)
    respond_to do |format|
      if @exp.save
        @cv = Cv.find(params[:cv_id])
        @education = Education.new
        @educations = @cv.educations
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def update
    @exp = Education.find(params[:edu_id])
    respond_to do |format|
      if @exp.update(edu_params)
        @cv = Cv.find(params[:cv_id])
        @education = Education.new
        @educations = @cv.educations
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def destroy
    @exp = Education.find(params[:id])
    @exp.destroy
    respond_to do |format|
      @cv = Cv.find(params[:cv_id])
      @education = Education.new
      @educations = @cv.educations
      format.js
    end
  end

  private
    def edu_params
      params.permit(:name, :cv_id, :id)
    end
end