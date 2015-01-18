class RequirementsController < ApplicationController
  def create
    @exp = Requirement.new(req_params)
    respond_to do |format|
      if @exp.save
        @job = Job.find(params[:job_id])
        @requirement = Requirement.new
        @requirements = @job.requirements
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def update
    @exp = Requirement.find(params[:exp_id])
    respond_to do |format|
      if @exp.update(exp_params)
        @job = Job.find(params[:job_id])
        @requirement = Requirement.new
        @requirements = @job.requirement
        format.js
      else
        #redirect_to group_path(background_params[:group_id]) , alert: "Problem adding your background, please try again"
      end
    end
  end
  def destroy
    @exp = Requirement.find(params[:id])
    @exp.destroy
    respond_to do |format|
      @job = Job.find(params[:job_id])
      @requirement = Requirement.new
      @requirements = @job.requirements
      format.js
    end
  end

  private
    def req_params
      params.permit(:name, :job_id, :id)
    end
end