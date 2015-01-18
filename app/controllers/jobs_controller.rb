class JobsController < ApplicationController
  def index
    @jobs = Job.search(params[:search])
  end
  def show
    @job = Job.find(params[:id])
  end
  def new
    @job = Job.new
  end
  def edit
    @job = Job.find(params[:id])
    @requirements = @job.requirements
    @requirement = Requirement.new
  end
  def create
    job = Job.new(job_params)
    job.company_id = current_user.company_id
    if job.save
      redirect_to edit_job_path(job.id)
    end
  end
  
  private
  def job_params
    params.require(:job).permit(:name)
  end
end