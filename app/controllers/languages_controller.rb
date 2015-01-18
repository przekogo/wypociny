class LangsController < ApplicationController
  def create
    @exp = Lang.new(lang_params)
    respond_to do |format|
      if @exp.save
        @cv = Cv.find(params[:cv_id])
        @lang = Lange.new
        @langs = @cv.langs
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def update
    @exp = Lang.find(params[:lang_id])
    respond_to do |format|
      if @exp.update(lang_params)
        @cv = Cv.find(params[:cv_id])
        @lang = Lang.new
        @langs = @cv.lang
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def destroy
    @exp = Lang.find(params[:id])
    @exp.destroy
    respond_to do |format|
      @cv = Cv.find(params[:cv_id])
      @lang = Lang.new
      @langs = @cv.langs
      format.js
    end
  end

  private
    def lang_params
      params.permit(:name, :cv_id, :id)
    end
end