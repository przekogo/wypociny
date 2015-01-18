class ExperiencesController < ApplicationController
  def create
    @exp = Experience.new(exp_params)
    respond_to do |format|
      if @exp.save
        @cv = Cv.find(params[:cv_id])
        @experience = Experience.new
        @experiences = @cv.experiences
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def update
    @exp = Experience.find(params[:exp_id])
    respond_to do |format|
      if @exp.update(exp_params)
        @cv = Cv.find(params[:cv_id])
        @experience = Experience.new
        @experiences = @cv.experiences
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def destroy
    @exp = Experience.find(params[:id])
    @exp.destroy
    respond_to do |format|
      @cv = Cv.find(params[:cv_id])
      @experience = Experience.new
      @experiences = @cv.experiences
      format.js
    end
  end

  private
    def exp_params
      params.permit(:name, :cv_id, :id)
    end
end