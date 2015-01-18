class LanguagesController < ApplicationController
  def create
    @exp = Language.new(lang_params)
    respond_to do |format|
      if @exp.save
        @cv = Cv.find(params[:cv_id])
        @language = Language.new
        @languages = @cv.languages
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def update
    @exp = Language.find(params[:lang_id])
    respond_to do |format|
      if @exp.update(lang_params)
        @cv = Cv.find(params[:cv_id])
        @language = Language.new
        @languages = @cv.languages
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def destroy
    @exp = Language.find(params[:id])
    @exp.destroy
    respond_to do |format|
      @cv = Cv.find(params[:cv_id])
      @language = Language.new
      @languages = @cv.languages
      format.js
    end
  end

  private
    def lang_params
      params.permit(:name, :cv_id, :id)
    end
end