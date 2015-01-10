class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end
  def show
    @job = Job.find(params[:id])
  end
  def new
    @job = Job.new
  end
  def create
    #tutej sie wpisze co czeba
    job = Job.new(post_params)
    job.company_id = current_user.company_id
    if job.save #i bedzie
      redirect_to company_path(current_user.company_id), notice: "dodano ofertę pracy"
    end
  end
  
  private
  def post_params
    params.require(:job).permit(:name)
  end
end