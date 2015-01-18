class HobbiesController < ApplicationController
  def create
    @exp = Hobby.new(hob_params)
    respond_to do |format|
      if @exp.save
        @cv = Cv.find(params[:cv_id])
        @hobby = Hobby.new
        @hobbies = @cv.hobbies
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def update
    @exp = Hobby.find(params[:hobby_id])
    respond_to do |format|
      if @exp.update(hob_params)
        @cv = Cv.find(params[:cv_id])
        @hobby = Hobby.new
        @hobbies = @cv.hobbies
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def destroy
    @exp = Hobby.find(params[:id])
    @exp.destroy
    respond_to do |format|
      @cv = Cv.find(params[:cv_id])
      @hobby = Hobby.new
      @hobbies = @cv.hobbies
      format.js
    end
  end

  private
    def hob_params
      params.permit(:name, :cv_id, :id)
    end
end