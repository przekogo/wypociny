class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.user = current_user
    if @company.save
       redirect_to root_path, notice: 'Dodano firmę.'
    else
      render 'new'
    end
  end

private

def company_params
    params.require(:company).permit(:company_name, :company_description)
  end

end